set title to "Lyrics generator �q���ͦ���
�п�ܺq��"

set songList to jukeBox()

set nameList to {}
set buttonInput to button returned of (display dialog "�п�ܺq��" buttons {"����", "�k�q��", "�k�q��"} default button 1)
repeat with i in songList
	set thisItem to contents of i
	set bool to buttonInput is in {"����", singer of thisItem}
	if bool then set the end of nameList to name of thisItem
end repeat


set userInput to choose from list nameList with prompt title default items item 1 of nameList
if userInput = false then error number -128

repeat with i in songList
	set thisItem to contents of i
	if name of thisItem = userInput as string then exit repeat
end repeat

set prompt to "�q�W�G" & name of thisItem & return & lyrics of thisItem
return display dialog prompt buttons "OK" default button 1


on jukeBox()
	set s1 to {name:"�ע߳դh_�k", singer:"�k�q��", lyrics:"�F�P�עߺٱo�W�A�Q�������W�A�Ч@�O�q�P�۷Q�A�|�~�A�@���A�p���P�p�N�n���n�C���ڦp���u �}�ߪ��F���A�ѪŮԤ�]�����A�սޥJ�ӰաI�L�T�L�{���ѨϡA�Ѥѱa�ۯ��A�B�B�I�I�ѪŸ̡A�ۦb���p���A�j�ǨƱ��A�h�o�ܷQ���]�����F�C�H�H�µۨ���V�A�ߤ��a�ۯ��A�B�B�I�I�ѪŸ̡A���P�a�I�s�A���ĨƱ��A�H�H���}�ߨ줣�o�F�C"}
	set s2 to {name:"�p�p�h�Q_�k", singer:"�k�q��", lyrics:"�p�p�h�Q�A�M���_�ɡA���۪��x�W�����C��L�j��A���i�p�ѡA������n�n�ۡC��������A��������A�S�H�ӶR���ˡH�������x�A�Ūſ��n�A�p��^�h���R�Q�C"}
	set s3 to {name:"�p�P�P", singer:"�k�q��", lyrics:"�@�{�@�{�p�P�P�A�@���@���G�����C�������b�ѪŤW�A�{�{���G���p�ۡC�@�{�@�{�p�P�P�A�@���@���G�����C"}
	set s4 to {name:"�p�ɭ�", singer:"�k�q��", lyrics:"�p�p���t�z�A�w�Y���t�z�A���۸� ������ �O�ڤp�ɭԡC�p�p���t�z�A�ѯu���t�z�A�u���� �u���A ���Y�p�참�C�R�ʸ����A����ѯu�A�Z�Ʀn�o�ݡA��i�]�B���d��A�����Ѱ��a�p�C�p�p���t�z�A�}�ɪ��t�z�A���ֲy �Ѥ��� �_���Ƥ��_���C"}
	set s5 to {name:"�p�S�__�k", singer:"�k�q��", lyrics:"�j��B�����T�ªZ�A�p�l�j�W�S�_�A�H�H�Ҫ��D�C�e�p�S�_���աA�p�S�_�n���f�S��O�A�S�ְ��A����n���W���A�B�ͥ�ڻ�֧ګY�����s�y�C�˼˳��|���A���Y���x�ʡA���@�ɻ{�u�֦��A�P���Kű���C��L�M�q�ߧӰ��A���ȱj�ɡA����ѥ���ȱoź�ơC"}
	set s6 to {name:"�m��", singer:"�k�q��", lyrics:"�H�H����i�F��A�ڪ��ּ֤�Ѱ��C�H�H�p�N�}���w���A���i���ڴM����n�C���i�_���f�U�̡A�A���Ʊ楲�o��C���_���Ƥ��i��ĳ�A�ߤ��@�Q�N�o��C�Q�p����A���R�A���~�ݵ^�СA�Aڻ�I�m�����աI�m���ڡA�ֳ����w�A�A�p�ߤ]�ۻ��C�m���ڡA�ֳ����w�A�A�p�ߤ]�ۻ��C"}
	set s7 to {name:"�ƹs�P_�k", singer:"�k�q��", lyrics:"Yor Ku Lu Yor Ki Ku Li�AYor Ku Ku Li Yor Ku Ku�AYor Ku Lu Yor Ki Ku Li�AYor Ku Ku Li Yor�C�g�~�g�~�t�P�A���o�k�a�A�o�p�t�P�A�]���~�Ȥp�P�A�p�P�a�����p�P�C�ſP�ſP��ۤѤ���A�֦P���p�p�t�P�A�K�a�ſP�A�g�~�P�t��p�t�P�CYor Ku Le He Le He Le�AYor Ku Le He Le He Le�AYor Ku Le He Ho Li�AYor Ho Ho �CYor Ku Le He Le He Le�AYor Ku Le He Le He Le�AYor Ku Le He�C"}
	set s8 to {name:"�������J�^����", singer:"�k�q��", lyrics:"�������J�^�����A�^�����A�������J�^�����A�Q���R�h�C"}
	set s9 to {name:"�ڬO�ӯ���_�k", singer:"�k�q��", lyrics:"�ڬO�ӯ����ΤS�G�A�ڬO�ӯ����ΤS�G�A�o�O�աA�o�O�L�A�o�O�աA�o�O�L�A���u�աA���u�աA�R���աA�R���աI"}
	set s10 to {name:"�P�J���ѲP_�k", singer:"�k�q��", lyrics:"���B���ȡA�����]���ȡA�N��H�N�j�������U�C�������o�A�i�H��騣���\���A�p��j�����]���ȡC�ڭn�ڭn��ڪ����A�h�쨺�̤]�n��ڪ����A�ڬJ�n���������A�Y�A�����\�N�U�\�^�a�C"}
	set s11 to {name:"���y�p�N", singer:"�k�q��", lyrics:"�ݬݫ­����L�A���L�n�������A��i��i���ʥʡA���L�ڪ����g�L�C������x�ء]������x�ء^�A�p�l�ӥi�š]�p��l�ӥi�š^�A�}�k�}�k��m�]�m�A�u�\���N�ᰲ�C��o�n�A�ذհաA���O���l�[���A�g�i�ۦ��зs�A�@�����|�t�C��r��A�ַm��A�g�r�g�A�g���a�A�����⤧���A�W���}�k�����A�C�w�I�n�A�P�g���A�X��L���}�U�C��r��A�ַm��A�g�r�g�A�g���a�A��o�n�A��o�����A�i���Q�u���L�C"}
	{s1, s2, s3, s4, s5, s6, s7, s8, s9, s10, s11}
end jukeBox