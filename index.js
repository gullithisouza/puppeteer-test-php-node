const puppeteer = require('puppeteer');
const fs = require('fs');
const path = require('path');

async function gerarPDF() {
    const browser = await puppeteer.launch({
        args: ['--no-sandbox']
    });
    const page = await browser.newPage();

    const html = fs.readFileSync(path.join(__dirname, '../template.html'), 'utf8');

    await page.setContent(html);

    await page.pdf({ path: './pdf/pdf.node.pdf', format: 'A4' });

    await browser.close();
    console.log("PDF gerado com Node!");
}

gerarPDF();
