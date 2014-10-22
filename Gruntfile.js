module.exports = function(grunt) {

  "use strict";

  grunt.initConfig({ 
  
    libFiles: [
      "src/**/*.purs",
      "bower_components/purescript-*/src/**/*.purs",
    ],
    
    clean: ["output"],
  
    pscMake: ["<%=libFiles%>"],
    dotPsci: ["<%=libFiles%>"],
    docgen: {
        readme: {
            src: "src/**/*.purs",
            dest: "docs/Module.md"
        }
    },
    
    psc: {
      exampleMulti: {
        options: { main: "Main" },
        src: ["examples/MultiArgFunctions.purs", "<%=libFiles%>"],
        dest: "tmp/MultiArgFunctions.js"
      }
    },

    execute: {
      exampleMulti: {
        src: "tmp/MultiArgFunctions.js"
      }
    }

  });

  grunt.loadNpmTasks("grunt-contrib-clean");
  grunt.loadNpmTasks("grunt-execute");
  grunt.loadNpmTasks("grunt-purescript");
  
  grunt.registerTask("examples", ["psc", "execute"]);
  grunt.registerTask("make", ["pscMake", "dotPsci", "docgen"]);
  grunt.registerTask("default", ["make"]);
};
