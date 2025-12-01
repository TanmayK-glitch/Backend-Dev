// File Writing Operations: 
// 1. createFile    2. appendFile   3. rename("oldPath", "newPath", "callBack")     4. copyFile("source", "dest", func())       5. unlinkFile("source", func(err))

// 1. Always use await + try/catch
// 2. Never use Sync version in real apps
// 3. Use a flag whenever you need to append. -> {flag: 'a'} -> here a is 'append'

const fs = require('fs');

// fs.appendFile("file.txt", " This is Future Cracked Dev", function(err) {
//     if(err) console.log(err);
//     else console.log("Done Writitng");
// });

fs.rename("file.txt", "newFile.txt", function(err){
    if(err) console.log(err);
    else console.log("Operation Done!!");
});