var Gun = require('gun');
require('gun/lib/time');//applly time plugin
var gun = Gun(
	{
		peers:[ 'http://47.91.217.163/gun', 'http://47.91.217.163:8765/gun', ]
	}
);
let gunfiresea = gun.get('gunfiresea');

gunfiresea.time((data, key, time)=>{//listen setup
	gun.get(data['#']).once((d,id)=>console.log(d));
},999);

