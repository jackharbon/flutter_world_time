'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/AssetManifest.json": "90be08941b4771e07657e333b3143b56",
"assets/assets/australia.jpg": "0bf628c62d6fdd010a45d22bf12908af",
"assets/assets/austria.jpg": "a801b32ce2929f8295241c6ff515e177",
"assets/assets/brasil.jpg": "d6e1e2b98130fe31f708bb73d7e9239c",
"assets/assets/canada.jpg": "e1314a3736da6dbf141ca0e31285454a",
"assets/assets/day.jpg": "c47a3f54ef05765248142780d08cccee",
"assets/assets/denmark.jpg": "068739927c77b6b33dcab7dbbf46f3ef",
"assets/assets/egypt.jpg": "c190db3d0311db9103c235a698a671fd",
"assets/assets/egypt.png": "a099e084c6fcccfa4032d58d17d63f27",
"assets/assets/finland.jpg": "eaa81425500917482d219c729cf48e39",
"assets/assets/france.jpg": "c6dcb1a02cc640686c529f79f62326dd",
"assets/assets/germany.jpg": "d8314d223a4082313e5257bf32bae2cd",
"assets/assets/germany.png": "d3b68fc65e16a603702c8324f6196a7f",
"assets/assets/greece.jpg": "c38730d50d818a0b160e4241a4b66c0c",
"assets/assets/greece.png": "d8c44c47741e348927cec7e3d64a22ca",
"assets/assets/indonesia.jpg": "ccfa1e8a8a73ed2b279bc64ee837fb2a",
"assets/assets/indonesia.png": "cb1239cc98b52f637175e17547c4c520",
"assets/assets/israel.jpg": "2c1f27e01c0b2825df95c22b5a96373d",
"assets/assets/japan.jpg": "7ad213368515c3c5691a4732e748098f",
"assets/assets/kenya.jpg": "3eae8789a914eb72dc011c33b7153166",
"assets/assets/kenya.png": "ec31c84f040e6a6a712081c3e38df4ac",
"assets/assets/loading.gif": "5fe4039b11fa6d042519dd1d049901c9",
"assets/assets/marshal_islands.jpg": "4cb92c3f166a4ae2926d1f1e88e45b83",
"assets/assets/mexico.jpg": "d5b478bba151fa8f54153c1c81570ebd",
"assets/assets/midday.jpg": "d35bee9210396755dea5bf0973c0f933",
"assets/assets/new_zealand.jpg": "b65d2fb53d30dc981f5e60b76414d4f7",
"assets/assets/night.jpg": "ad7cc5218fd1d078f38a796b06e38088",
"assets/assets/night1.jpg": "b7e13d04da452c6c91ad0cc0821bb2f9",
"assets/assets/night2.jpg": "503c1803f3b2dd4a84e1713257d511ef",
"assets/assets/poland.jpg": "19fbd3d36a230404f19337581dd72698",
"assets/assets/samoa.jpg": "f7c1b5a9bf3cdac479720e3fea8bbca6",
"assets/assets/singapore.jpg": "009bdb6372ad48c6375e21a337d5fcfa",
"assets/assets/solomon_islands.jpg": "8c380371de1fa2a3f5aba52414ef1240",
"assets/assets/south_africa.jpg": "fbd57c3989137f7868ee6a2b45ea1e01",
"assets/assets/south_korea.jpg": "1db3f8a18a044b7b123adb2766cd7971",
"assets/assets/south_korea.png": "02ed96f645c463627f9bdfe1943adbba",
"assets/assets/spain.jpg": "006f39f95e0a1454008a649ae7b71854",
"assets/assets/sunrise.jpg": "2f8d0dc042f3a0bdd51c7942e304854e",
"assets/assets/sunset.jpg": "539ab57f1dee7b191fd541c3c66e2dad",
"assets/assets/taiwan.jpg": "1cd8420a70f5497526888fbd71938de5",
"assets/assets/turkey.jpg": "e587c0fc9bc5bae00bc67bec9dfd2f7f",
"assets/assets/uk.jpg": "c12edd013b8148eebe2426ba29367d04",
"assets/assets/uk.png": "e316c8551496904bf2da00f0b4178da3",
"assets/assets/ukraine.jpg": "30e58f4441075e2455b78b58b0bad429",
"assets/assets/usa.jpg": "50d7d367ca6c9431edf0bab30ca18dfa",
"assets/assets/usa.png": "16ebcdfdfefbbecc4bada8f40f19f99f",
"assets/FontManifest.json": "d621a676c0c2031c396e07ae05848fac",
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
"assets/NOTICES": "559dcbf30a40673223432b96a677d530",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/packages/flutter_math_fork/lib/katex_fonts/fonts/KaTeX_AMS-Regular.ttf": "657a5353a553777e270827bd1630e467",
"assets/packages/flutter_math_fork/lib/katex_fonts/fonts/KaTeX_Caligraphic-Bold.ttf": "a9c8e437146ef63fcd6fae7cf65ca859",
"assets/packages/flutter_math_fork/lib/katex_fonts/fonts/KaTeX_Caligraphic-Regular.ttf": "7ec92adfa4fe03eb8e9bfb60813df1fa",
"assets/packages/flutter_math_fork/lib/katex_fonts/fonts/KaTeX_Fraktur-Bold.ttf": "46b41c4de7a936d099575185a94855c4",
"assets/packages/flutter_math_fork/lib/katex_fonts/fonts/KaTeX_Fraktur-Regular.ttf": "dede6f2c7dad4402fa205644391b3a94",
"assets/packages/flutter_math_fork/lib/katex_fonts/fonts/KaTeX_Main-Bold.ttf": "9eef86c1f9efa78ab93d41a0551948f7",
"assets/packages/flutter_math_fork/lib/katex_fonts/fonts/KaTeX_Main-BoldItalic.ttf": "e3c361ea8d1c215805439ce0941a1c8d",
"assets/packages/flutter_math_fork/lib/katex_fonts/fonts/KaTeX_Main-Italic.ttf": "ac3b1882325add4f148f05db8cafd401",
"assets/packages/flutter_math_fork/lib/katex_fonts/fonts/KaTeX_Main-Regular.ttf": "5a5766c715ee765aa1398997643f1589",
"assets/packages/flutter_math_fork/lib/katex_fonts/fonts/KaTeX_Math-BoldItalic.ttf": "946a26954ab7fbd7ea78df07795a6cbc",
"assets/packages/flutter_math_fork/lib/katex_fonts/fonts/KaTeX_Math-Italic.ttf": "a7732ecb5840a15be39e1eda377bc21d",
"assets/packages/flutter_math_fork/lib/katex_fonts/fonts/KaTeX_SansSerif-Bold.ttf": "ad0a28f28f736cf4c121bcb0e719b88a",
"assets/packages/flutter_math_fork/lib/katex_fonts/fonts/KaTeX_SansSerif-Italic.ttf": "d89b80e7bdd57d238eeaa80ed9a1013a",
"assets/packages/flutter_math_fork/lib/katex_fonts/fonts/KaTeX_SansSerif-Regular.ttf": "b5f967ed9e4933f1c3165a12fe3436df",
"assets/packages/flutter_math_fork/lib/katex_fonts/fonts/KaTeX_Script-Regular.ttf": "55d2dcd4778875a53ff09320a85a5296",
"assets/packages/flutter_math_fork/lib/katex_fonts/fonts/KaTeX_Size1-Regular.ttf": "1e6a3368d660edc3a2fbbe72edfeaa85",
"assets/packages/flutter_math_fork/lib/katex_fonts/fonts/KaTeX_Size2-Regular.ttf": "959972785387fe35f7d47dbfb0385bc4",
"assets/packages/flutter_math_fork/lib/katex_fonts/fonts/KaTeX_Size3-Regular.ttf": "e87212c26bb86c21eb028aba2ac53ec3",
"assets/packages/flutter_math_fork/lib/katex_fonts/fonts/KaTeX_Size4-Regular.ttf": "85554307b465da7eb785fd3ce52ad282",
"assets/packages/flutter_math_fork/lib/katex_fonts/fonts/KaTeX_Typewriter-Regular.ttf": "87f56927f1ba726ce0591955c8b3b42d",
"assets/packages/wakelock_web/assets/no_sleep.js": "7748a45cd593f33280669b29c2c8919a",
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
"index.html": "9b7c4c8fb33e5dbf7e601983117d67d7",
"/": "9b7c4c8fb33e5dbf7e601983117d67d7",
"main.dart.js": "df23e3b0551279fa3175df0bba8036cd",
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
