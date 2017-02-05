function preloadImages () {
  for (var i = 0; i < arguments.length; i++) {
    jQuery('<img />').attr('src', arguments[i])
  }
}

preloadImages(
  '/images/happy.png',
  '/images/sad.png',
  '/images/angry.png',
  '/images/confused.png',
  '/images/disgusted.png',
  '/images/unknown.png',
  '/images/surprises.png'
)
