'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/AssetManifest.json": "4aab2608e10561b786a2bc242004b122",
"assets/assets/day.jpg": "c47a3f54ef05765248142780d08cccee",
"assets/assets/egypt.png": "a099e084c6fcccfa4032d58d17d63f27",
"assets/assets/germany.png": "d3b68fc65e16a603702c8324f6196a7f",
"assets/assets/greece.png": "d8c44c47741e348927cec7e3d64a22ca",
"assets/assets/indonesia.png": "cb1239cc98b52f637175e17547c4c520",
"assets/assets/kenya.png": "ec31c84f040e6a6a712081c3e38df4ac",
"assets/assets/night.jpg": "ad7cc5218fd1d078f38a796b06e38088",
"assets/assets/south_korea.png": "02ed96f645c463627f9bdfe1943adbba",
"assets/assets/sunset.jpg": "cac5de41ddb8b8ba1897039973dfe8b6",
"assets/assets/uk.png": "e316c8551496904bf2da00f0b4178da3",
"assets/assets/usa.png": "16ebcdfdfefbbecc4bada8f40f19f99f",
"assets/FontManifest.json": "dba01db05f8db36ed2f1b7b67cc16982",
"assets/fonts/Genos-Black.ttf": "d77716bd6167c79ce50fdf3c9dc28b94",
"assets/fonts/Genos-BlackItalic.ttf": "48fb47448728f8320099e2482fdf192d",
"assets/fonts/Genos-Bold.ttf": "c3c29fa4c59435683905eabc7c8c5bed",
"assets/fonts/Genos-BoldItalic.ttf": "af11433cd5bd48f4699cc3593c581a4d",
"assets/fonts/Genos-ExtraBold.ttf": "65557d347f9b3dd9d0731f512bbc9850",
"assets/fonts/Genos-ExtraBoldItalic.ttf": "f168fe10cc367f891e71c29b4ec543b0",
"assets/fonts/Genos-ExtraLight.ttf": "b13c08776643c19e86169991004a20aa",
"assets/fonts/Genos-ExtraLightItalic.ttf": "98827b834115dd1569990312b5c01668",
"assets/fonts/Genos-Italic.ttf": "5c9dd484d1bb443030c66df9456dfe2f",
"assets/fonts/Genos-Light.ttf": "759645a7b1d8902c7a280bf1f222475d",
"assets/fonts/Genos-LightItalic.ttf": "aab74a319c7fd85f498e33ccb5a3e303",
"assets/fonts/Genos-Medium.ttf": "0d660eca4691b3ce1e0f141430864a50",
"assets/fonts/Genos-MediumItalic.ttf": "143b78a60ed63fa47175400eadc7f863",
"assets/fonts/Genos-Regular.ttf": "aa9ad1f6df3fa099c314c67eb17ce886",
"assets/fonts/Genos-SemiBold.ttf": "74a3d48a3f0f7d6ea522249fb901b569",
"assets/fonts/Genos-SemiBoldItalic.ttf": "35f17fc17bab3ae0e344c0145f0919b2",
"assets/fonts/Genos-Thin.ttf": "d91ac21613e98bc9e8e14afed933cc8b",
"assets/fonts/Genos-ThinItalic.ttf": "95d51c25947d040d79eeaa26a74861a2",
"assets/fonts/MaterialIcons-Regular.otf": "e7069dfd19b331be16bed984668fe080",
"assets/NOTICES": "758b4a213ae844739a4122ed4dc72016",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"canvaskit/canvaskit.js": "97937cb4c2c2073c968525a3e08c86a3",
"canvaskit/canvaskit.wasm": "3de12d898ec208a5f31362cc00f09b9e",
"canvaskit/profiling/canvaskit.js": "c21852696bc1cc82e8894d851c01921a",
"canvaskit/profiling/canvaskit.wasm": "371bc4e204443b0d5e774d64a046eb99",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "a85fcf6324d3c4d3ae3be1ae4931e9c5",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "dc71d5dc23f758853224331bf66efee6",
"/": "dc71d5dc23f758853224331bf66efee6",
"main.dart.js": "fb851213aa676af14873883f1ac406a8",
"manifest.json": "d6a493e1c4d804499f8603d3f88eda81",
"version.json": "d3d252550fd21b67da95a3493b1020db"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "main.dart.js",
"index.html",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}

// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
