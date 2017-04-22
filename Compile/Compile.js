
const FS = require('fs');
const CP = require('child_process');

//

const files = FS.readdirSync('../Source');

//

for(let i = 0; i < files.length; ++i)
{
	const lua = files[i].toLowerCase().replace('.hts','.lua');

	CP.execSync('Hate -i ../Source/' + files[i] + ' -o ../Content/' + lua);
}
