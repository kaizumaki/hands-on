import * as fs from 'fs';
import { create } from 'html-pdf-chrome';

const options = {
    port: 9222, // port Chrome is listening on
};

fs.readFile(process.argv[2], 'utf-8', function(err, data) {
    create(data, options).then((pdf) => pdf.toFile(process.argv[2].replace('.html', '.pdf')));
    create(data, options).then((pdf) => pdf.toBase64());
    create(data, options).then((pdf) => pdf.toBuffer());
});
