module.exports = function(grunt) {

  grunt.loadNpmTasks('grunt-dotlit');

  grunt.initConfig({
    dotlit: {
      options: {
        verbose: false,
        extractAll: true
      },
      files: ['*.lit.md']
    }
  });

  grunt.registerTask('default', ['dotlit']);

};