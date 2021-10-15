function! color#random()
    if has('python')
python << EOF
import random
res = random.random()
EOF
    elseif has('python3')
python3 << EOF
import json
import random
res = random.random()
EOF
    endif
    if has('python')
        return pyeval('res')
    elseif has('python3')
        return py3eval('res')
    endif
endfunction


let g:color#pinyin_map = {
\    'aibeilv': {
\        'hex': '#dfecd5',
\        'name': '艾背绿',
\        'pinyin': 'aibeilv'
\    },
\    'ailv': {
\        'hex': '#cad3c3',
\        'name': '艾绿',
\        'pinyin': 'ailv'
\    },
\    'ananlan': {
\        'hex': '#3170a7',
\        'name': '安安蓝',
\        'pinyin': 'ananlan'
\    },
\    'anhaishuilv': {
\        'hex': '#584717',
\        'name': '暗海水绿',
\        'pinyin': 'anhaishuilv'
\    },
\    'anlan': {
\        'hex': '#101f30',
\        'name': '暗蓝',
\        'pinyin': 'anlan'
\    },
\    'anlanzi': {
\        'hex': '#131124',
\        'name': '暗蓝紫',
\        'pinyin': 'anlanzi'
\    },
\    'anlongdanzi': {
\        'hex': '#22202e',
\        'name': '暗龙胆紫',
\        'pinyin': 'anlongdanzi'
\    },
\    'antuozong': {
\        'hex': '#592620',
\        'name': '暗驼棕',
\        'pinyin': 'antuozong'
\    },
\    'anyuzi': {
\        'hex': '#5c2223',
\        'name': '暗玉紫',
\        'pinyin': 'anyuzi'
\    },
\    'anziyuanhong': {
\        'hex': '#82202b',
\        'name': '暗紫苑红',
\        'pinyin': 'anziyuanhong'
\    },
\    'baijihong': {
\        'hex': '#de7897',
\        'name': '白芨红',
\        'pinyin': 'baijihong'
\    },
\    'bailingniaohui': {
\        'hex': '#b4a992',
\        'name': '百灵鸟灰',
\        'pinyin': 'bailingniaohui'
\    },
\    'baiqucailv': {
\        'hex': '#485b4d',
\        'name': '白屈菜绿',
\        'pinyin': 'baiqucailv'
\    },
\    'bangroubai': {
\        'hex': '#f9f1db',
\        'name': '蚌肉白',
\        'pinyin': 'bangroubai'
\    },
\    'banjiuhui': {
\        'hex': '#482936',
\        'name': '斑鸠灰',
\        'pinyin': 'banjiuhui'
\    },
\    'baochunhong': {
\        'hex': '#ec8aa4',
\        'name': '报春红',
\        'pinyin': 'baochunhong'
\    },
\    'baoshilan': {
\        'hex': '#2486b9',
\        'name': '宝石蓝',
\        'pinyin': 'baoshilan'
\    },
\    'baoshilv': {
\        'hex': '#41ae3c',
\        'name': '宝石绿',
\        'pinyin': 'baoshilv'
\    },
\    'beiguahuang': {
\        'hex': '#fc8c23',
\        'name': '北瓜黄',
\        'pinyin': 'beiguahuang'
\    },
\    'biandouhuahong': {
\        'hex': '#ef498b',
\        'name': '扁豆花红',
\        'pinyin': 'biandouhuahong'
\    },
\    'biandouzi': {
\        'hex': '#a35c8f',
\        'name': '扁豆紫',
\        'pinyin': 'biandouzi'
\    },
\    'biluochunlv': {
\        'hex': '#867018',
\        'name': '碧螺春绿',
\        'pinyin': 'biluochunlv'
\    },
\    'binglangzong': {
\        'hex': '#c1651a',
\        'name': '槟榔综',
\        'pinyin': 'binglangzong'
\    },
\    'bingshanlan': {
\        'hex': '#a4aca7',
\        'name': '冰山蓝',
\        'pinyin': 'bingshanlan'
\    },
\    'biqing': {
\        'hex': '#5cb3cc',
\        'name': '碧青',
\        'pinyin': 'biqing'
\    },
\    'biqizi': {
\        'hex': '#411c35',
\        'name': '荸荠紫',
\        'pinyin': 'biqizi'
\    },
\    'bogenhong': {
\        'hex': '#d13c74',
\        'name': '菠根红',
\        'pinyin': 'bogenhong'
\    },
\    'bohelv': {
\        'hex': '#207f4c',
\        'name': '薄荷绿',
\        'pinyin': 'bohelv'
\    },
\    'bolinlan': {
\        'hex': '#126bae',
\        'name': '柏林蓝',
\        'pinyin': 'bolinlan'
\    },
\    'boluohong': {
\        'hex': '#fc7930',
\        'name': '菠萝红',
\        'pinyin': 'boluohong'
\    },
\    'caitouzi': {
\        'hex': '#951c48',
\        'name': '菜头紫',
\        'pinyin': 'caitouzi'
\    },
\    'canghuahong': {
\        'hex': '#ec2d7a',
\        'name': '藏花红',
\        'pinyin': 'canghuahong'
\    },
\    'canghuang': {
\        'hex': '#806332',
\        'name': '苍黄',
\        'pinyin': 'canghuang'
\    },
\    'canglan': {
\        'hex': '#134857',
\        'name': '苍蓝',
\        'pinyin': 'canglan'
\    },
\    'canglv': {
\        'hex': '#223e36',
\        'name': '苍绿',
\        'pinyin': 'canglv'
\    },
\    'cangyinghui': {
\        'hex': '#36282b',
\        'name': '苍蝇灰',
\        'pinyin': 'cangyinghui'
\    },
\    'caohuang': {
\        'hex': '#d2b42c',
\        'name': '草黄',
\        'pinyin': 'caohuang'
\    },
\    'caohuilv': {
\        'hex': '#8e804b',
\        'name': '草灰绿',
\        'pinyin': 'caohuilv'
\    },
\    'caomeihong': {
\        'hex': '#ef6f48',
\        'name': '草莓红',
\        'pinyin': 'caomeihong'
\    },
\    'caomolihong': {
\        'hex': '#ef475d',
\        'name': '草茉莉红',
\        'pinyin': 'caomolihong'
\    },
\    'caoyuanyuanlv': {
\        'hex': '#9abeaf',
\        'name': '草原远绿',
\        'pinyin': 'caoyuanyuanlv'
\    },
\    'caozhuhong': {
\        'hex': '#f8ebe6',
\        'name': '草珠红',
\        'pinyin': 'caozhuhong'
\    },
\    'chahe': {
\        'hex': '#5d3d21',
\        'name': '茶褐',
\        'pinyin': 'chahe'
\    },
\    'chahuahong': {
\        'hex': '#ee3f4d',
\        'name': '茶花红',
\        'pinyin': 'chahuahong'
\    },
\    'changshihui': {
\        'hex': '#363433',
\        'name': '长石灰',
\        'pinyin': 'changshihui'
\    },
\    'chanlv': {
\        'hex': '#3c9566',
\        'name': '蟾绿',
\        'pinyin': 'chanlv'
\    },
\    'chaolan': {
\        'hex': '#2983bb',
\        'name': '潮蓝',
\        'pinyin': 'chaolan'
\    },
\    'chaomihuang': {
\        'hex': '#f4ce69',
\        'name': '炒米黄',
\        'pinyin': 'chaomihuang'
\    },
\    'chengpihuang': {
\        'hex': '#fca104',
\        'name': '橙皮黄',
\        'pinyin': 'chengpihuang'
\    },
\    'chenhui': {
\        'hex': '#b6a476',
\        'name': '尘灰',
\        'pinyin': 'chenhui'
\    },
\    'chenxihong': {
\        'hex': '#ea8958',
\        'name': '晨曦红',
\        'pinyin': 'chenxihong'
\    },
\    'chuhehong': {
\        'hex': '#e16c96',
\        'name': '初荷红',
\        'pinyin': 'chuhehong'
\    },
\    'chunmeihong': {
\        'hex': '#f1939c',
\        'name': '春梅红',
\        'pinyin': 'chunmeihong'
\    },
\    'chushuxinghuang': {
\        'hex': '#f8bc31',
\        'name': '初熟杏黄',
\        'pinyin': 'chushuxinghuang'
\    },
\    'chutaofenhong': {
\        'hex': '#f6dcce',
\        'name': '初桃粉红',
\        'pinyin': 'chutaofenhong'
\    },
\    'conglv': {
\        'hex': '#40a070',
\        'name': '葱绿',
\        'pinyin': 'conglv'
\    },
\    'cuilan': {
\        'hex': '#1e9eb3',
\        'name': '翠蓝',
\        'pinyin': 'cuilan'
\    },
\    'cuilv': {
\        'hex': '#20a162',
\        'name': '翠绿',
\        'pinyin': 'cuilv'
\    },
\    'cujiangcaohong': {
\        'hex': '#c5708b',
\        'name': '酢酱草红',
\        'pinyin': 'cujiangcaohong'
\    },
\    'dadouhuang': {
\        'hex': '#fbcd31',
\        'name': '大豆黄',
\        'pinyin': 'dadouhuang'
\    },
\    'dahong': {
\        'hex': '#f04b22',
\        'name': '大红',
\        'pinyin': 'dahong'
\    },
\    'daimaohuang': {
\        'hex': '#daa45a',
\        'name': '玳瑁黄',
\        'pinyin': 'daimaohuang'
\    },
\    'dalishihui': {
\        'hex': '#c4cbcf',
\        'name': '大理石灰',
\        'pinyin': 'dalishihui'
\    },
\    'danbaishilv': {
\        'hex': '#579572',
\        'name': '蛋白石绿',
\        'pinyin': 'danbaishilv'
\    },
\    'dancanghuahong': {
\        'hex': '#f6ad8f',
\        'name': '淡藏花红',
\        'pinyin': 'dancanghuahong'
\    },
\    'dancuilv': {
\        'hex': '#c6dfc8',
\        'name': '淡翠绿',
\        'pinyin': 'dancuilv'
\    },
\    'dandousha': {
\        'hex': '#873d24',
\        'name': '淡豆沙',
\        'pinyin': 'dandousha'
\    },
\    'danfanlan': {
\        'hex': '#0f95b0',
\        'name': '胆矾蓝',
\        'pinyin': 'danfanlan'
\    },
\    'danfei': {
\        'hex': '#f2cac9',
\        'name': '淡绯',
\        'pinyin': 'danfei'
\    },
\    'danhuilv': {
\        'hex': '#ad9e5f',
\        'name': '淡灰绿',
\        'pinyin': 'danhuilv'
\    },
\    'danjianghong': {
\        'hex': '#ec7696',
\        'name': '淡绛红',
\        'pinyin': 'danjianghong'
\    },
\    'danjianhuang': {
\        'hex': '#f9d770',
\        'name': '淡茧黄',
\        'pinyin': 'danjianhuang'
\    },
\    'danjucheng': {
\        'hex': '#fba414',
\        'name': '淡橘橙',
\        'pinyin': 'danjucheng'
\    },
\    'dankafei': {
\        'hex': '#945833',
\        'name': '淡咖啡',
\        'pinyin': 'dankafei'
\    },
\    'dankehuang': {
\        'hex': '#f8c387',
\        'name': '蛋壳黄',
\        'pinyin': 'dankehuang'
\    },
\    'dankekezong': {
\        'hex': '#b7511d',
\        'name': '淡可可棕',
\        'pinyin': 'dankekezong'
\    },
\    'danlanhui': {
\        'hex': '#5e7987',
\        'name': '淡蓝灰',
\        'pinyin': 'danlanhui'
\    },
\    'danlanzi': {
\        'hex': '#a7a8bd',
\        'name': '淡蓝紫',
\        'pinyin': 'danlanzi'
\    },
\    'danlizong': {
\        'hex': '#673424',
\        'name': '淡栗棕',
\        'pinyin': 'danlizong'
\    },
\    'danlv': {
\        'hex': '#61ac85',
\        'name': '淡绿',
\        'pinyin': 'danlv'
\    },
\    'danlvhui': {
\        'hex': '#70887d',
\        'name': '淡绿灰',
\        'pinyin': 'danlvhui'
\    },
\    'danmeiguihui': {
\        'hex': '#b89485',
\        'name': '淡玫瑰灰',
\        'pinyin': 'danmeiguihui'
\    },
\    'danmifen': {
\        'hex': '#fbeee2',
\        'name': '淡米粉',
\        'pinyin': 'danmifen'
\    },
\    'danmihuang': {
\        'hex': '#f9d367',
\        'name': '淡密黄',
\        'pinyin': 'danmihuang'
\    },
\    'danqianhong': {
\        'hex': '#e77c8e',
\        'name': '淡茜红',
\        'pinyin': 'danqianhong'
\    },
\    'danqianniuzi': {
\        'hex': '#d1c2d3',
\        'name': '淡牵牛紫',
\        'pinyin': 'danqianniuzi'
\    },
\    'danqingzi': {
\        'hex': '#e0c8d1',
\        'name': '淡青紫',
\        'pinyin': 'danqingzi'
\    },
\    'danrouse': {
\        'hex': '#f8e0b0',
\        'name': '淡肉色',
\        'pinyin': 'danrouse'
\    },
\    'danruixianghong': {
\        'hex': '#ee4866',
\        'name': '淡蕊香红',
\        'pinyin': 'danruixianghong'
\    },
\    'danshuhong': {
\        'hex': '#ee2746',
\        'name': '淡曙红',
\        'pinyin': 'danshuhong'
\    },
\    'dansongyan': {
\        'hex': '#4d4030',
\        'name': '淡松烟',
\        'pinyin': 'dansongyan'
\    },
\    'dantaohong': {
\        'hex': '#f6cec1',
\        'name': '淡桃红',
\        'pinyin': 'dantaohong'
\    },
\    'dantengluozi': {
\        'hex': '#f2e7e5',
\        'name': '淡藤萝紫',
\        'pinyin': 'dantengluozi'
\    },
\    'dantiehui': {
\        'hex': '#5b423a',
\        'name': '淡铁灰',
\        'pinyin': 'dantiehui'
\    },
\    'dantuhuang': {
\        'hex': '#8c4b31',
\        'name': '淡土黄',
\        'pinyin': 'dantuhuang'
\    },
\    'danyingsuhong': {
\        'hex': '#eea08c',
\        'name': '淡罂粟红',
\        'pinyin': 'danyingsuhong'
\    },
\    'danyinhui': {
\        'hex': '#c1b2a3',
\        'name': '淡银灰',
\        'pinyin': 'danyinhui'
\    },
\    'danzhe': {
\        'hex': '#be7e4a',
\        'name': '淡赭',
\        'pinyin': 'danzhe'
\    },
\    'danzihong': {
\        'hex': '#d2568c',
\        'name': '丹紫红',
\        'pinyin': 'danzihong'
\    },
\    'dianqing': {
\        'hex': '#1661ab',
\        'name': '靛青',
\        'pinyin': 'dianqing'
\    },
\    'dianqishihong': {
\        'hex': '#c35691',
\        'name': '电气石红',
\        'pinyin': 'dianqishihong'
\    },
\    'dianzilan': {
\        'hex': '#10aec2',
\        'name': '甸子蓝',
\        'pinyin': 'dianzilan'
\    },
\    'diaoyezong': {
\        'hex': '#e7a23f',
\        'name': '凋叶棕',
\        'pinyin': 'diaoyezong'
\    },
\    'diaozhonghuahong': {
\        'hex': '#ce5e8a',
\        'name': '吊钟花红',
\        'pinyin': 'diaozhonghuahong'
\    },
\    'diaozi': {
\        'hex': '#5d3131',
\        'name': '貂紫',
\        'pinyin': 'diaozi'
\    },
\    'diechilan': {
\        'hex': '#4e7ca1',
\        'name': '蝶翅蓝',
\        'pinyin': 'diechilan'
\    },
\    'diehuang': {
\        'hex': '#e2d849',
\        'name': '蝶黄',
\        'pinyin': 'diehuang'
\    },
\    'dingxiangdanzi': {
\        'hex': '#e9d7df',
\        'name': '丁香淡紫',
\        'pinyin': 'dingxiangdanzi'
\    },
\    'dingxiangzong': {
\        'hex': '#71361d',
\        'name': '丁香棕',
\        'pinyin': 'dingxiangzong'
\    },
\    'doukouzi': {
\        'hex': '#ad6598',
\        'name': '豆蔻紫',
\        'pinyin': 'doukouzi'
\    },
\    'dousha': {
\        'hex': '#481e1c',
\        'name': '豆沙',
\        'pinyin': 'dousha'
\    },
\    'douzhihuang': {
\        'hex': '#f8e8c1',
\        'name': '豆汁黄',
\        'pinyin': 'douzhihuang'
\    },
\    'eguanhong': {
\        'hex': '#d11a2d',
\        'name': '鹅冠红',
\        'pinyin': 'eguanhong'
\    },
\    'ehui': {
\        'hex': '#737c7b',
\        'name': '垩灰',
\        'pinyin': 'ehui'
\    },
\    'enyoulv': {
\        'hex': '#373834',
\        'name': '蒽油绿',
\        'pinyin': 'enyoulv'
\    },
\    'exueshihong': {
\        'hex': '#ab372f',
\        'name': '鹅血石红',
\        'pinyin': 'exueshihong'
\    },
\    'ezhanghuang': {
\        'hex': '#fbb929',
\        'name': '鹅掌黄',
\        'pinyin': 'ezhanghuang'
\    },
\    'faluohong': {
\        'hex': '#ee8055',
\        'name': '法螺红',
\        'pinyin': 'faluohong'
\    },
\    'feiquanlv': {
\        'hex': '#497568',
\        'name': '飞泉绿',
\        'pinyin': 'feiquanlv'
\    },
\    'feiyancaolan': {
\        'hex': '#0f59a4',
\        'name': '飞燕草蓝',
\        'pinyin': 'feiyancaolan'
\    },
\    'fenbai': {
\        'hex': '#fbf2e3',
\        'name': '粉白',
\        'pinyin': 'fenbai'
\    },
\    'fengfanhuang': {
\        'hex': '#dc9123',
\        'name': '风帆黄',
\        'pinyin': 'fengfanhuang'
\    },
\    'fengxianhuahong': {
\        'hex': '#ea7293',
\        'name': '凤仙花红',
\        'pinyin': 'fengxianhuahong'
\    },
\    'fengxinzi': {
\        'hex': '#c8adc4',
\        'name': '凤信紫',
\        'pinyin': 'fengxinzi'
\    },
\    'fengyehong': {
\        'hex': '#c21f30',
\        'name': '枫叶红',
\        'pinyin': 'fengyehong'
\    },
\    'fenhong': {
\        'hex': '#f2b9b2',
\        'name': '粉红',
\        'pinyin': 'fenhong'
\    },
\    'fenlv': {
\        'hex': '#83cbac',
\        'name': '粉绿',
\        'pinyin': 'fenlv'
\    },
\    'fentuanhuahong': {
\        'hex': '#ec9bad',
\        'name': '粉团花红',
\        'pinyin': 'fentuanhuahong'
\    },
\    'foshouhuang': {
\        'hex': '#fed71a',
\        'name': '佛手黄',
\        'pinyin': 'foshouhuang'
\    },
\    'fupenzihong': {
\        'hex': '#ac1f18',
\        'name': '覆盆子红',
\        'pinyin': 'fupenzihong'
\    },
\    'furonghong': {
\        'hex': '#f9723d',
\        'name': '芙蓉红',
\        'pinyin': 'furonghong'
\    },
\    'gancaohuang': {
\        'hex': '#f3bf4c',
\        'name': '甘草黄',
\        'pinyin': 'gancaohuang'
\    },
\    'ganglan': {
\        'hex': '#0f1423',
\        'name': '钢蓝',
\        'pinyin': 'ganglan'
\    },
\    'gangqing': {
\        'hex': '#142334',
\        'name': '钢青',
\        'pinyin': 'gangqing'
\    },
\    'ganhong': {
\        'hex': '#a6522c',
\        'name': '绀红',
\        'pinyin': 'ganhong'
\    },
\    'ganlanhuanglv': {
\        'hex': '#bec936',
\        'name': '橄榄黄绿',
\        'pinyin': 'ganlanhuanglv'
\    },
\    'ganlanhui': {
\        'hex': '#503e2a',
\        'name': '橄榄灰',
\        'pinyin': 'ganlanhui'
\    },
\    'ganlanlv': {
\        'hex': '#1f2623',
\        'name': '苷蓝绿',
\        'pinyin': 'ganlanlv'
\    },
\    'ganlanshilv': {
\        'hex': '#b2cf87',
\        'name': '橄榄石绿',
\        'pinyin': 'ganlanshilv'
\    },
\    'ganzhezi': {
\        'hex': '#621624',
\        'name': '甘蔗紫',
\        'pinyin': 'ganzhezi'
\    },
\    'ganzi': {
\        'hex': '#461629',
\        'name': '绀紫',
\        'pinyin': 'ganzi'
\    },
\    'gaolianghong': {
\        'hex': '#c02c38',
\        'name': '高粱红',
\        'pinyin': 'gaolianghong'
\    },
\    'gejinzi': {
\        'hex': '#7e2065',
\        'name': '葛巾紫',
\        'pinyin': 'gejinzi'
\    },
\    'gelan': {
\        'hex': '#1c2938',
\        'name': '鸽蓝',
\        'pinyin': 'gelan'
\    },
\    'gongdianlv': {
\        'hex': '#20894d',
\        'name': '宫殿绿',
\        'pinyin': 'gongdianlv'
\    },
\    'goushuhong': {
\        'hex': '#ed3333',
\        'name': '枸枢红',
\        'pinyin': 'goushuhong'
\    },
\    'guarangfen': {
\        'hex': '#f9cb8b',
\        'name': '瓜瓤粉',
\        'pinyin': 'guarangfen'
\    },
\    'guaranghong': {
\        'hex': '#f68c60',
\        'name': '瓜瓤红',
\        'pinyin': 'guaranghong'
\    },
\    'gudinghui': {
\        'hex': '#36292f',
\        'name': '古鼎灰',
\        'pinyin': 'gudinghui'
\    },
\    'guhuang': {
\        'hex': '#e8b004',
\        'name': '谷黄',
\        'pinyin': 'guhuang'
\    },
\    'guibeihuang': {
\        'hex': '#826b48',
\        'name': '龟背黄',
\        'pinyin': 'guibeihuang'
\    },
\    'guihong': {
\        'hex': '#f25a47',
\        'name': '桂红',
\        'pinyin': 'guihong'
\    },
\    'guipidanzong': {
\        'hex': '#c09351',
\        'name': '桂皮淡棕',
\        'pinyin': 'guipidanzong'
\    },
\    'guiyuhong': {
\        'hex': '#f09c5a',
\        'name': '鲑鱼红',
\        'pinyin': 'guiyuhong'
\    },
\    'gulan': {
\        'hex': '#1a94bc',
\        'name': '钴蓝',
\        'pinyin': 'gulan'
\    },
\    'guqiaohong': {
\        'hex': '#f17666',
\        'name': '谷鞘红',
\        'pinyin': 'guqiaohong'
\    },
\    'gutonghe': {
\        'hex': '#5c3719',
\        'name': '古铜褐',
\        'pinyin': 'gutonghe'
\    },
\    'gutonglv': {
\        'hex': '#533c1b',
\        'name': '古铜绿',
\        'pinyin': 'gutonglv'
\    },
\    'gutongzi': {
\        'hex': '#440e25',
\        'name': '古铜紫',
\        'pinyin': 'gutongzi'
\    },
\    'haibaohui': {
\        'hex': '#483332',
\        'name': '海报灰',
\        'pinyin': 'haibaohui'
\    },
\    'haijunlan': {
\        'hex': '#346c9c',
\        'name': '海军蓝',
\        'pinyin': 'haijunlan'
\    },
\    'hailuocheng': {
\        'hex': '#f0945d',
\        'name': '海螺橙',
\        'pinyin': 'hailuocheng'
\    },
\    'haimeilv': {
\        'hex': '#e2e7bf',
\        'name': '海沬绿',
\        'pinyin': 'haimeilv'
\    },
\    'haiouhui': {
\        'hex': '#9a8878',
\        'name': '海鸥灰',
\        'pinyin': 'haiouhui'
\    },
\    'haiqing': {
\        'hex': '#22a2c3',
\        'name': '海青',
\        'pinyin': 'haiqing'
\    },
\    'haishenhui': {
\        'hex': '#fffefa',
\        'name': '海参灰',
\        'pinyin': 'haishenhui'
\    },
\    'haitanghong': {
\        'hex': '#f03752',
\        'name': '海棠红',
\        'pinyin': 'haitanghong'
\    },
\    'haitaolan': {
\        'hex': '#15559a',
\        'name': '海涛蓝',
\        'pinyin': 'haitaolan'
\    },
\    'haitianlan': {
\        'hex': '#c6e6e8',
\        'name': '海天蓝',
\        'pinyin': 'haitianlan'
\    },
\    'haiwanglv': {
\        'hex': '#248067',
\        'name': '海王绿',
\        'pinyin': 'haiwanglv'
\    },
\    'haixiangzi': {
\        'hex': '#4b1e2f',
\        'name': '海象紫',
\        'pinyin': 'haixiangzi'
\    },
\    'hanbaiyu': {
\        'hex': '#f8f4ed',
\        'name': '汉白玉',
\        'pinyin': 'hanbaiyu'
\    },
\    'haohuang': {
\        'hex': '#dfc243',
\        'name': '蒿黄',
\        'pinyin': 'haohuang'
\    },
\    'hedinghong': {
\        'hex': '#d42517',
\        'name': '鹤顶红',
\        'pinyin': 'hedinghong'
\    },
\    'hehuabai': {
\        'hex': '#fbecde',
\        'name': '荷花白',
\        'pinyin': 'hehuabai'
\    },
\    'hehuanhong': {
\        'hex': '#f0a1a8',
\        'name': '合欢红',
\        'pinyin': 'hehuanhong'
\    },
\    'hehui': {
\        'hex': '#4a4035',
\        'name': '鹤灰',
\        'pinyin': 'hehui'
\    },
\    'hetunhui': {
\        'hex': '#393733',
\        'name': '河豚灰',
\        'pinyin': 'hetunhui'
\    },
\    'heyelv': {
\        'hex': '#1a6840',
\        'name': '荷叶绿',
\        'pinyin': 'heyelv'
\    },
\    'honggonghong': {
\        'hex': '#f23e23',
\        'name': '红汞红',
\        'pinyin': 'honggonghong'
\    },
\    'honglan': {
\        'hex': '#2177b8',
\        'name': '虹蓝',
\        'pinyin': 'honglan'
\    },
\    'houmaohui': {
\        'hex': '#97846c',
\        'name': '猴毛灰',
\        'pinyin': 'houmaohui'
\    },
\    'huaihuahuanglv': {
\        'hex': '#d2d97a',
\        'name': '槐花黄绿',
\        'pinyin': 'huaihuahuanglv'
\    },
\    'huanghunhui': {
\        'hex': '#474b4c',
\        'name': '黄昏灰',
\        'pinyin': 'huanghunhui'
\    },
\    'huanglianhuang': {
\        'hex': '#fcc515',
\        'name': '黄连黄',
\        'pinyin': 'huanglianhuang'
\    },
\    'huaqing': {
\        'hex': '#2376b7',
\        'name': '花青',
\        'pinyin': 'huaqing'
\    },
\    'huilan': {
\        'hex': '#21373d',
\        'name': '灰蓝',
\        'pinyin': 'huilan'
\    },
\    'huilv': {
\        'hex': '#8a6913',
\        'name': '灰绿',
\        'pinyin': 'huilv'
\    },
\    'hujishenglv': {
\        'hex': '#2b312c',
\        'name': '槲寄生绿',
\        'pinyin': 'hujishenglv'
\    },
\    'huoezi': {
\        'hex': '#33141e',
\        'name': '火鹅紫',
\        'pinyin': 'huoezi'
\    },
\    'huonizong': {
\        'hex': '#aa6a4c',
\        'name': '火泥棕',
\        'pinyin': 'huonizong'
\    },
\    'huoshanzong': {
\        'hex': '#482522',
\        'name': '火山棕',
\        'pinyin': 'huoshanzong'
\    },
\    'huoyanzong': {
\        'hex': '#863020',
\        'name': '火岩棕',
\        'pinyin': 'huoyanzong'
\    },
\    'huozhuanhong': {
\        'hex': '#cd6227',
\        'name': '火砖红',
\        'pinyin': 'huozhuanhong'
\    },
\    'hupihuang': {
\        'hex': '#eaad1a',
\        'name': '虎皮黄',
\        'pinyin': 'hupihuang'
\    },
\    'hupohuang': {
\        'hex': '#feba07',
\        'name': '琥珀黄',
\        'pinyin': 'hupohuang'
\    },
\    'hushuilan': {
\        'hex': '#b0d5df',
\        'name': '湖水蓝',
\        'pinyin': 'hushuilan'
\    },
\    'jiahong': {
\        'hex': '#eeaa9c',
\        'name': '颊红',
\        'pinyin': 'jiahong'
\    },
\    'jialingshuilv': {
\        'hex': '#add5a2',
\        'name': '嘉陵水绿',
\        'pinyin': 'jialingshuilv'
\    },
\    'jianfengzi': {
\        'hex': '#3e3841',
\        'name': '剑锋紫',
\        'pinyin': 'jianfengzi'
\    },
\    'jiangdouhong': {
\        'hex': '#ed9db2',
\        'name': '豇豆红',
\        'pinyin': 'jiangdouhong'
\    },
\    'jianghong': {
\        'hex': '#eeb8c3',
\        'name': '姜红',
\        'pinyin': 'jianghong'
\    },
\    'jianghuang': {
\        'hex': '#e2c027',
\        'name': '姜黄',
\        'pinyin': 'jianghuang'
\    },
\    'jiangzi': {
\        'hex': '#4d1018',
\        'name': '酱紫',
\        'pinyin': 'jiangzi'
\    },
\    'jiangzong': {
\        'hex': '#5a1f1b',
\        'name': '酱棕',
\        'pinyin': 'jiangzong'
\    },
\    'jianjingyuhong': {
\        'hex': '#cc163a',
\        'name': '尖晶玉红',
\        'pinyin': 'jianjingyuhong'
\    },
\    'jianniaolan': {
\        'hex': '#1491a8',
\        'name': '樫鸟蓝',
\        'pinyin': 'jianniaolan'
\    },
\    'jianshilan': {
\        'hex': '#66a9c9',
\        'name': '涧石蓝',
\        'pinyin': 'jianshilan'
\    },
\    'jiaochalv': {
\        'hex': '#553b18',
\        'name': '焦茶绿',
\        'pinyin': 'jiaochalv'
\    },
\    'jiaoqing': {
\        'hex': '#87723e',
\        'name': '鲛青',
\        'pinyin': 'jiaoqing'
\    },
\    'jiazhutaohong': {
\        'hex': '#eb507e',
\        'name': '夹竹桃红',
\        'pinyin': 'jiazhutaohong'
\    },
\    'jidanhuang': {
\        'hex': '#fbb612',
\        'name': '鸡蛋黄',
\        'pinyin': 'jidanhuang'
\    },
\    'jiegengzi': {
\        'hex': '#813c85',
\        'name': '桔梗紫',
\        'pinyin': 'jiegengzi'
\    },
\    'jiehuang': {
\        'hex': '#d9a40e',
\        'name': '芥黄',
\        'pinyin': 'jiehuang'
\    },
\    'jiehuazi': {
\        'hex': '#983680',
\        'name': '芥花紫',
\        'pinyin': 'jiehuazi'
\    },
\    'jieqiaodanfenhong': {
\        'hex': '#f7cfba',
\        'name': '介壳淡粉红',
\        'pinyin': 'jieqiaodanfenhong'
\    },
\    'jifenhong': {
\        'hex': '#e6d2d5',
\        'name': '蓟粉红',
\        'pinyin': 'jifenhong'
\    },
\    'jiguanghong': {
\        'hex': '#f33b1f',
\        'name': '极光红',
\        'pinyin': 'jiguanghong'
\    },
\    'jinghong': {
\        'hex': '#eea6b7',
\        'name': '晶红',
\        'pinyin': 'jinghong'
\    },
\    'jinglan': {
\        'hex': '#5698c3',
\        'name': '睛蓝',
\        'pinyin': 'jinglan'
\    },
\    'jingshizi': {
\        'hex': '#1f2040',
\        'name': '晶石紫',
\        'pinyin': 'jingshizi'
\    },
\    'jingtailan': {
\        'hex': '#2775b6',
\        'name': '景泰蓝',
\        'pinyin': 'jingtailan'
\    },
\    'jingtianlan': {
\        'hex': '#c3d7df',
\        'name': '井天蓝',
\        'pinyin': 'jingtianlan'
\    },
\    'jinguahuang': {
\        'hex': '#fcd217',
\        'name': '金瓜黄',
\        'pinyin': 'jinguahuang'
\    },
\    'jingyuhui': {
\        'hex': '#475164',
\        'name': '鲸鱼灰',
\        'pinyin': 'jingyuhui'
\    },
\    'jinhuang': {
\        'hex': '#f26b1f',
\        'name': '金黄',
\        'pinyin': 'jinhuang'
\    },
\    'jinkuihong': {
\        'hex': '#bf3553',
\        'name': '锦葵红',
\        'pinyin': 'jinkuihong'
\    },
\    'jinlianhuacheng': {
\        'hex': '#f86b1d',
\        'name': '金莲花橙',
\        'pinyin': 'jinlianhuacheng'
\    },
\    'jintuo': {
\        'hex': '#e46828',
\        'name': '金驼',
\        'pinyin': 'jintuo'
\    },
\    'jinyehuang': {
\        'hex': '#ffa60f',
\        'name': '金叶黄',
\        'pinyin': 'jinyehuang'
\    },
\    'jinyinghuang': {
\        'hex': '#f4a83a',
\        'name': '金莺黄',
\        'pinyin': 'jinyinghuang'
\    },
\    'jinyuzi': {
\        'hex': '#500a16',
\        'name': '金鱼紫',
\        'pinyin': 'jinyuzi'
\    },
\    'jinzhanhuang': {
\        'hex': '#fcc307',
\        'name': '金盏黄',
\        'pinyin': 'jinzhanhuang'
\    },
\    'jinzi': {
\        'hex': '#806d9e',
\        'name': '槿紫',
\        'pinyin': 'jinzi'
\    },
\    'jiqing': {
\        'hex': '#63bbd0',
\        'name': '霁青',
\        'pinyin': 'jiqing'
\    },
\    'jizong': {
\        'hex': '#de7622',
\        'name': '麂棕',
\        'pinyin': 'jizong'
\    },
\    'jucheng': {
\        'hex': '#f97d1c',
\        'name': '橘橙',
\        'pinyin': 'jucheng'
\    },
\    'juleibai': {
\        'hex': '#e9ddb6',
\        'name': '菊蕾白',
\        'pinyin': 'juleibai'
\    },
\    'kafei': {
\        'hex': '#753117',
\        'name': '咖啡',
\        'pinyin': 'kafei'
\    },
\    'kekezong': {
\        'hex': '#652b1c',
\        'name': '可可棕',
\        'pinyin': 'kekezong'
\    },
\    'kongquelan': {
\        'hex': '#0eb0c9',
\        'name': '孔雀蓝',
\        'pinyin': 'kongquelan'
\    },
\    'kongquelv': {
\        'hex': '#229453',
\        'name': '孔雀绿',
\        'pinyin': 'kongquelv'
\    },
\    'koushaolv': {
\        'hex': '#5dbe8a',
\        'name': '蔻梢绿',
\        'pinyin': 'koushaolv'
\    },
\    'kuishanhuang': {
\        'hex': '#f8d86a',
\        'name': '葵扇黄',
\        'pinyin': 'kuishanhuang'
\    },
\    'kulv': {
\        'hex': '#b78d12',
\        'name': '枯绿',
\        'pinyin': 'kulv'
\    },
\    'laiyanglihuang': {
\        'hex': '#815f25',
\        'name': '莱阳梨黄',
\        'pinyin': 'laiyanglihuang'
\    },
\    'langhualv': {
\        'hex': '#92b3a5',
\        'name': '浪花绿',
\        'pinyin': 'langhualv'
\    },
\    'langyanhui': {
\        'hex': '#5d655f',
\        'name': '狼烟灰',
\        'pinyin': 'langyanhui'
\    },
\    'lanlv': {
\        'hex': '#12a182',
\        'name': '蓝绿',
\        'pinyin': 'lanlv'
\    },
\    'laohuang': {
\        'hex': '#f6dead',
\        'name': '酪黄',
\        'pinyin': 'laohuang'
\    },
\    'lianbanhong': {
\        'hex': '#ea517f',
\        'name': '莲瓣红',
\        'pinyin': 'lianbanhong'
\    },
\    'lianzibai': {
\        'hex': '#e5d3aa',
\        'name': '莲子白',
\        'pinyin': 'lianzibai'
\    },
\    'lichunhong': {
\        'hex': '#eb261a',
\        'name': '丽春红',
\        'pinyin': 'lichunhong'
\    },
\    'lingmenghong': {
\        'hex': '#d276a3',
\        'name': '菱锰红',
\        'pinyin': 'lingmenghong'
\    },
\    'liroubai': {
\        'hex': '#f2e6ce',
\        'name': '荔肉白',
\        'pinyin': 'liroubai'
\    },
\    'liuehuang': {
\        'hex': '#f9a633',
\        'name': '榴萼黄',
\        'pinyin': 'liuehuang'
\    },
\    'liuhuahong': {
\        'hex': '#f34718',
\        'name': '榴花红',
\        'pinyin': 'liuhuahong'
\    },
\    'liuhuahuang': {
\        'hex': '#f2ce2b',
\        'name': '硫华黄',
\        'pinyin': 'liuhuahuang'
\    },
\    'liuzihong': {
\        'hex': '#f1908c',
\        'name': '榴子红',
\        'pinyin': 'liuzihong'
\    },
\    'lizi': {
\        'hex': '#2b1216',
\        'name': '李紫',
\        'pinyin': 'lizi'
\    },
\    'lizong': {
\        'hex': '#5c1e19',
\        'name': '栗棕',
\        'pinyin': 'lizong'
\    },
\    'longjingyuhong': {
\        'hex': '#ef632b',
\        'name': '龙睛鱼红',
\        'pinyin': 'longjingyuhong'
\    },
\    'longjingyuzi': {
\        'hex': '#4e2a40',
\        'name': '龙睛鱼紫',
\        'pinyin': 'longjingyuzi'
\    },
\    'longkuizi': {
\        'hex': '#322f3b',
\        'name': '龙葵紫',
\        'pinyin': 'longkuizi'
\    },
\    'longxuhong': {
\        'hex': '#cc5595',
\        'name': '龙须红',
\        'pinyin': 'longxuhong'
\    },
\    'luanshizi': {
\        'hex': '#30161c',
\        'name': '卵石紫',
\        'pinyin': 'luanshizi'
\    },
\    'luhui': {
\        'hex': '#856d72',
\        'name': '芦灰',
\        'pinyin': 'luhui'
\    },
\    'lujiaozong': {
\        'hex': '#e3bd8d',
\        'name': '鹿角棕',
\        'pinyin': 'lujiaozong'
\    },
\    'luobohong': {
\        'hex': '#f13c22',
\        'name': '萝卜红',
\        'pinyin': 'luobohong'
\    },
\    'luodianzi': {
\        'hex': '#74759b',
\        'name': '螺甸紫',
\        'pinyin': 'luodianzi'
\    },
\    'luolanzi': {
\        'hex': '#c08eaf',
\        'name': '萝兰紫',
\        'pinyin': 'luolanzi'
\    },
\    'luoxiahong': {
\        'hex': '#cf4813',
\        'name': '落霞红',
\        'pinyin': 'luoxiahong'
\    },
\    'luoyingdanfen': {
\        'hex': '#f9e8d0',
\        'name': '落英淡粉',
\        'pinyin': 'luoyingdanfen'
\    },
\    'lupihe': {
\        'hex': '#d99156',
\        'name': '鹿皮褐',
\        'pinyin': 'lupihe'
\    },
\    'lusuihui': {
\        'hex': '#bdaead',
\        'name': '芦穗灰',
\        'pinyin': 'lusuihui'
\    },
\    'luweilv': {
\        'hex': '#b7d07a',
\        'name': '芦苇绿',
\        'pinyin': 'luweilv'
\    },
\    'lvhui': {
\        'hex': '#314a43',
\        'name': '绿灰',
\        'pinyin': 'lvhui'
\    },
\    'mabiancaozi': {
\        'hex': '#ede3e7',
\        'name': '马鞭草紫',
\        'pinyin': 'mabiancaozi'
\    },
\    'maiganhuang': {
\        'hex': '#f8df70',
\        'name': '麦秆黄',
\        'pinyin': 'maiganhuang'
\    },
\    'maimiaolv': {
\        'hex': '#55bb8a',
\        'name': '麦苗绿',
\        'pinyin': 'maimiaolv'
\    },
\    'maiyatanghuang': {
\        'hex': '#f9d27d',
\        'name': '麦芽糖黄',
\        'pinyin': 'maiyatanghuang'
\    },
\    'manaohui': {
\        'hex': '#cfccc9',
\        'name': '玛瑙灰',
\        'pinyin': 'manaohui'
\    },
\    'mangconglv': {
\        'hex': '#141e1b',
\        'name': '莽丛绿',
\        'pinyin': 'mangconglv'
\    },
\    'mangguohuang': {
\        'hex': '#ddc871',
\        'name': '芒果黄',
\        'pinyin': 'mangguohuang'
\    },
\    'mangguozong': {
\        'hex': '#954416',
\        'name': '芒果棕',
\        'pinyin': 'mangguozong'
\    },
\    'manjianghong': {
\        'hex': '#a7535a',
\        'name': '满江红',
\        'pinyin': 'manjianghong'
\    },
\    'mantianxingzi': {
\        'hex': '#2e317c',
\        'name': '满天星紫',
\        'pinyin': 'mantianxingzi'
\    },
\    'maolv': {
\        'hex': '#66c18c',
\        'name': '毛绿',
\        'pinyin': 'maolv'
\    },
\    'meidielv': {
\        'hex': '#12aa9c',
\        'name': '美蝶绿',
\        'pinyin': 'meidielv'
\    },
\    'meiguifen': {
\        'hex': '#f8b37f',
\        'name': '玫瑰粉',
\        'pinyin': 'meiguifen'
\    },
\    'meiguihong': {
\        'hex': '#d2357d',
\        'name': '玫瑰红',
\        'pinyin': 'meiguihong'
\    },
\    'meiguihui': {
\        'hex': '#4b2e2b',
\        'name': '玫瑰灰',
\        'pinyin': 'meiguihui'
\    },
\    'meiguizi': {
\        'hex': '#ba2f7b',
\        'name': '玫瑰紫',
\        'pinyin': 'meiguizi'
\    },
\    'meihong': {
\        'hex': '#c45a65',
\        'name': '莓红',
\        'pinyin': 'meihong'
\    },
\    'meijianghong': {
\        'hex': '#fa5d19',
\        'name': '莓酱红',
\        'pinyin': 'meijianghong'
\    },
\    'meirenjiaocheng': {
\        'hex': '#fa7e23',
\        'name': '美人焦橙',
\        'pinyin': 'meirenjiaocheng'
\    },
\    'miehuang': {
\        'hex': '#f7de98',
\        'name': '篾黄',
\        'pinyin': 'miehuang'
\    },
\    'mihuang': {
\        'hex': '#fbb957',
\        'name': '蜜黄',
\        'pinyin': 'mihuang'
\    },
\    'minghui': {
\        'hex': '#8a988e',
\        'name': '明灰',
\        'pinyin': 'minghui'
\    },
\    'minglv': {
\        'hex': '#9eccab',
\        'name': '明绿',
\        'pinyin': 'minglv'
\    },
\    'mise': {
\        'hex': '#f9e9cd',
\        'name': '米色',
\        'pinyin': 'mise'
\    },
\    'molihuang': {
\        'hex': '#f8df72',
\        'name': '茉莉黄',
\        'pinyin': 'molihuang'
\    },
\    'moshizi': {
\        'hex': '#382129',
\        'name': '磨石紫',
\        'pinyin': 'moshizi'
\    },
\    'mozi': {
\        'hex': '#310f1b',
\        'name': '墨紫',
\        'pinyin': 'mozi'
\    },
\    'mudanfenhong': {
\        'hex': '#eea2a4',
\        'name': '牡丹粉红',
\        'pinyin': 'mudanfenhong'
\    },
\    'muguahuang': {
\        'hex': '#f9c116',
\        'name': '木瓜黄',
\        'pinyin': 'muguahuang'
\    },
\    'muyunhui': {
\        'hex': '#4f383e',
\        'name': '暮云灰',
\        'pinyin': 'muyunhui'
\    },
\    'nenhui': {
\        'hex': '#74787a',
\        'name': '嫩灰',
\        'pinyin': 'nenhui'
\    },
\    'nenjulv': {
\        'hex': '#f0f5e5',
\        'name': '嫩菊绿',
\        'pinyin': 'nenjulv'
\    },
\    'nenlinghong': {
\        'hex': '#de3f7c',
\        'name': '嫩菱红',
\        'pinyin': 'nenlinghong'
\    },
\    'niehui': {
\        'hex': '#9fa39a',
\        'name': '镍灰',
\        'pinyin': 'niehui'
\    },
\    'niluolan': {
\        'hex': '#2474b5',
\        'name': '尼罗蓝',
\        'pinyin': 'niluolan'
\    },
\    'ningmenghuang': {
\        'hex': '#fcd337',
\        'name': '柠檬黄',
\        'pinyin': 'ningmenghuang'
\    },
\    'niujiaohui': {
\        'hex': '#2d2e36',
\        'name': '牛角灰',
\        'pinyin': 'niujiaohui'
\    },
\    'ouhe': {
\        'hex': '#edc3ae',
\        'name': '藕荷',
\        'pinyin': 'ouhe'
\    },
\    'oulan': {
\        'hex': '#c7d2d4',
\        'name': '鸥蓝',
\        'pinyin': 'oulan'
\    },
\    'pingguohong': {
\        'hex': '#f15642',
\        'name': '苹果红',
\        'pinyin': 'pingguohong'
\    },
\    'pingguolv': {
\        'hex': '#bacf65',
\        'name': '苹果绿',
\        'pinyin': 'pingguolv'
\    },
\    'pinhong': {
\        'hex': '#ef3473',
\        'name': '品红',
\        'pinyin': 'pinhong'
\    },
\    'pinlan': {
\        'hex': '#2b73af',
\        'name': '品蓝',
\        'pinyin': 'pinlan'
\    },
\    'pipahuang': {
\        'hex': '#fca106',
\        'name': '枇杷黄',
\        'pinyin': 'pipahuang'
\    },
\    'pubulan': {
\        'hex': '#51c4d3',
\        'name': '瀑布蓝',
\        'pinyin': 'pubulan'
\    },
\    'putaojiangzi': {
\        'hex': '#5a1216',
\        'name': '葡萄酱紫',
\        'pinyin': 'putaojiangzi'
\    },
\    'putaojiuhong': {
\        'hex': '#62102e',
\        'name': '葡萄酒红',
\        'pinyin': 'putaojiuhong'
\    },
\    'putaozi': {
\        'hex': '#4c1f24',
\        'name': '葡萄紫',
\        'pinyin': 'putaozi'
\    },
\    'qianhui': {
\        'hex': '#bbb5ac',
\        'name': '铅灰',
\        'pinyin': 'qianhui'
\    },
\    'qianlaohuang': {
\        'hex': '#f9bd10',
\        'name': '浅烙黄',
\        'pinyin': 'qianlaohuang'
\    },
\    'qianniuhualan': {
\        'hex': '#1177b0',
\        'name': '牵牛花蓝',
\        'pinyin': 'qianniuhualan'
\    },
\    'qianniuzi': {
\        'hex': '#681752',
\        'name': '牵牛紫',
\        'pinyin': 'qianniuzi'
\    },
\    'qianshibai': {
\        'hex': '#e2e1e4',
\        'name': '芡食白',
\        'pinyin': 'qianshibai'
\    },
\    'qiantuose': {
\        'hex': '#e2c17c',
\        'name': '浅驼色',
\        'pinyin': 'qiantuose'
\    },
\    'qiepizi': {
\        'hex': '#2d0c13',
\        'name': '茄皮紫',
\        'pinyin': 'qiepizi'
\    },
\    'qingfanlv': {
\        'hex': '#2c9678',
\        'name': '青矾绿',
\        'pinyin': 'qingfanlv'
\    },
\    'qinghakezi': {
\        'hex': '#bc84a8',
\        'name': '青蛤壳紫',
\        'pinyin': 'qinghakezi'
\    },
\    'qinghui': {
\        'hex': '#2b333e',
\        'name': '青灰',
\        'pinyin': 'qinghui'
\    },
\    'qinglian': {
\        'hex': '#8b2671',
\        'name': '青莲',
\        'pinyin': 'qinglian'
\    },
\    'qingshanlan': {
\        'hex': '#8fb2c9',
\        'name': '晴山蓝',
\        'pinyin': 'qingshanlan'
\    },
\    'qingshuilan': {
\        'hex': '#93d5dc',
\        'name': '清水蓝',
\        'pinyin': 'qingshuilan'
\    },
\    'qingtinghong': {
\        'hex': '#f1441d',
\        'name': '蜻蜓红',
\        'pinyin': 'qingtinghong'
\    },
\    'qingtinglan': {
\        'hex': '#3b818c',
\        'name': '蜻蜓蓝',
\        'pinyin': 'qingtinglan'
\    },
\    'qionghui': {
\        'hex': '#c4d7d6',
\        'name': '穹灰',
\        'pinyin': 'qionghui'
\    },
\    'qiubolan': {
\        'hex': '#8abcd1',
\        'name': '秋波蓝',
\        'pinyin': 'qiubolan'
\    },
\    'qiuhaitanghong': {
\        'hex': '#ec2b24',
\        'name': '秋海棠红',
\        'pinyin': 'qiuhaitanghong'
\    },
\    'qiukuihuang': {
\        'hex': '#eed045',
\        'name': '秋葵黄',
\        'pinyin': 'qiukuihuang'
\    },
\    'quhong': {
\        'hex': '#f05a46',
\        'name': '曲红',
\        'pinyin': 'quhong'
\    },
\    'qunqing': {
\        'hex': '#1772b4',
\        'name': '群青',
\        'pinyin': 'qunqing'
\    },
\    'rouse': {
\        'hex': '#f7c173',
\        'name': '肉色',
\        'pinyin': 'rouse'
\    },
\    'ruanmuhuang': {
\        'hex': '#de9e44',
\        'name': '软木黄',
\        'pinyin': 'ruanmuhuang'
\    },
\    'rubai': {
\        'hex': '#f9f4dc',
\        'name': '乳白',
\        'pinyin': 'rubai'
\    },
\    'runhong': {
\        'hex': '#f7cdbc',
\        'name': '润红',
\        'pinyin': 'runhong'
\    },
\    'ruyahuang': {
\        'hex': '#ffc90c',
\        'name': '乳鸭黄',
\        'pinyin': 'ruyahuang'
\    },
\    'shanchahong': {
\        'hex': '#ed556a',
\        'name': '山茶红',
\        'pinyin': 'shanchahong'
\    },
\    'shangengzi': {
\        'hex': '#61649f',
\        'name': '山梗紫',
\        'pinyin': 'shangengzi'
\    },
\    'shanhuhong': {
\        'hex': '#f04a3a',
\        'name': '珊瑚红',
\        'pinyin': 'shanhuhong'
\    },
\    'shanjihe': {
\        'hex': '#986524',
\        'name': '山鸡褐',
\        'pinyin': 'shanjihe'
\    },
\    'shanjihuang': {
\        'hex': '#b78b26',
\        'name': '山鸡黄',
\        'pinyin': 'shanjihuang'
\    },
\    'shanlan': {
\        'hex': '#7cabb1',
\        'name': '闪蓝',
\        'pinyin': 'shanlan'
\    },
\    'shanlidouhong': {
\        'hex': '#c27c88',
\        'name': '山黎豆红',
\        'pinyin': 'shanlidouhong'
\    },
\    'shaoyaogenghong': {
\        'hex': '#eba0b3',
\        'name': '芍药耕红',
\        'pinyin': 'shaoyaogenghong'
\    },
\    'shashihuang': {
\        'hex': '#e5b751',
\        'name': '沙石黄',
\        'pinyin': 'shashihuang'
\    },
\    'shayuhui': {
\        'hex': '#35333c',
\        'name': '沙鱼灰',
\        'pinyin': 'shayuhui'
\    },
\    'shehong': {
\        'hex': '#f19790',
\        'name': '舌红',
\        'pinyin': 'shehong'
\    },
\    'shenhailv': {
\        'hex': '#1a3b32',
\        'name': '深海绿',
\        'pinyin': 'shenhailv'
\    },
\    'shenhui': {
\        'hex': '#81776e',
\        'name': '深灰',
\        'pinyin': 'shenhui'
\    },
\    'shenhuilan': {
\        'hex': '#132c33',
\        'name': '深灰蓝',
\        'pinyin': 'shenhuilan'
\    },
\    'shenqianniuzi': {
\        'hex': '#1c0d1a',
\        'name': '深牵牛紫',
\        'pinyin': 'shenqianniuzi'
\    },
\    'shibanhui': {
\        'hex': '#624941',
\        'name': '石板灰',
\        'pinyin': 'shibanhui'
\    },
\    'shihong': {
\        'hex': '#f2481b',
\        'name': '柿红',
\        'pinyin': 'shihong'
\    },
\    'shilv': {
\        'hex': '#57c3c2',
\        'name': '石绿',
\        'pinyin': 'shilv'
\    },
\    'shiruihong': {
\        'hex': '#f0c9cf',
\        'name': '石蕊红',
\        'pinyin': 'shiruihong'
\    },
\    'shizhuhong': {
\        'hex': '#ee4863',
\        'name': '石竹红',
\        'pinyin': 'shizhuhong'
\    },
\    'shizhuzi': {
\        'hex': '#63071c',
\        'name': '石竹紫',
\        'pinyin': 'shizhuzi'
\    },
\    'shubeihui': {
\        'hex': '#73575c',
\        'name': '鼠背灰',
\        'pinyin': 'shubeihui'
\    },
\    'shubihong': {
\        'hex': '#e3b4b8',
\        'name': '鼠鼻红',
\        'pinyin': 'shubihong'
\    },
\    'shuihong': {
\        'hex': '#f1c4cd',
\        'name': '水红',
\        'pinyin': 'shuihong'
\    },
\    'shuilv': {
\        'hex': '#8cc269',
\        'name': '水绿',
\        'pinyin': 'shuilv'
\    },
\    'shuiniuhui': {
\        'hex': '#2f2f35',
\        'name': '水牛灰',
\        'pinyin': 'shuiniuhui'
\    },
\    'songshuanglv': {
\        'hex': '#83a78d',
\        'name': '松霜绿',
\        'pinyin': 'songshuanglv'
\    },
\    'songshuhui': {
\        'hex': '#4f4032',
\        'name': '松鼠灰',
\        'pinyin': 'songshuhui'
\    },
\    'songyemudanhong': {
\        'hex': '#eb3c70',
\        'name': '松叶牡丹红',
\        'pinyin': 'songyemudanhong'
\    },
\    'sunpizong': {
\        'hex': '#732e12',
\        'name': '筍皮棕',
\        'pinyin': 'sunpizong'
\    },
\    'suxinhuang': {
\        'hex': '#fccb16',
\        'name': '素馨黄',
\        'pinyin': 'suxinhuang'
\    },
\    'tailv': {
\        'hex': '#887322',
\        'name': '苔绿',
\        'pinyin': 'tailv'
\    },
\    'tangchangpuhong': {
\        'hex': '#de1c31',
\        'name': '唐菖蒲红',
\        'pinyin': 'tangchangpuhong'
\    },
\    'tangcilan': {
\        'hex': '#11659a',
\        'name': '搪磁蓝',
\        'pinyin': 'tangcilan'
\    },
\    'tanshuilv': {
\        'hex': '#645822',
\        'name': '潭水绿',
\        'pinyin': 'tanshuilv'
\    },
\    'tanzi': {
\        'hex': '#381924',
\        'name': '檀紫',
\        'pinyin': 'tanzi'
\    },
\    'taocihong': {
\        'hex': '#e16723',
\        'name': '陶瓷红',
\        'pinyin': 'taocihong'
\    },
\    'taohong': {
\        'hex': '#f0ada0',
\        'name': '桃红',
\        'pinyin': 'taohong'
\    },
\    'tenghuang': {
\        'hex': '#ffd111',
\        'name': '藤黄',
\        'pinyin': 'tenghuang'
\    },
\    'tengluozi': {
\        'hex': '#8076a3',
\        'name': '藤萝紫',
\        'pinyin': 'tengluozi'
\    },
\    'tianlan': {
\        'hex': '#1677b3',
\        'name': '天蓝',
\        'pinyin': 'tianlan'
\    },
\    'tianluolv': {
\        'hex': '#5e665b',
\        'name': '田螺绿',
\        'pinyin': 'tianluolv'
\    },
\    'tianyuanlv': {
\        'hex': '#68b88e',
\        'name': '田园绿',
\        'pinyin': 'tianyuanlv'
\    },
\    'tieshuihong': {
\        'hex': '#f5391c',
\        'name': '铁水红',
\        'pinyin': 'tieshuihong'
\    },
\    'tiezong': {
\        'hex': '#d85916',
\        'name': '铁棕',
\        'pinyin': 'tiezong'
\    },
\    'tonglv': {
\        'hex': '#2bae85',
\        'name': '铜绿',
\        'pinyin': 'tonglv'
\    },
\    'tuhuang': {
\        'hex': '#d6a01d',
\        'name': '土黄',
\        'pinyin': 'tuhuang'
\    },
\    'tuose': {
\        'hex': '#66462a',
\        'name': '驼色',
\        'pinyin': 'tuose'
\    },
\    'tuyanhong': {
\        'hex': '#ec4e8a',
\        'name': '兔眼红',
\        'pinyin': 'tuyanhong'
\    },
\    'waguanhui': {
\        'hex': '#47484c',
\        'name': '瓦罐灰',
\        'pinyin': 'waguanhui'
\    },
\    'wahui': {
\        'hex': '#867e76',
\        'name': '瓦灰',
\        'pinyin': 'wahui'
\    },
\    'walv': {
\        'hex': '#45b787',
\        'name': '蛙绿',
\        'pinyin': 'walv'
\    },
\    'wanbolan': {
\        'hex': '#648e93',
\        'name': '晚波蓝',
\        'pinyin': 'wanbolan'
\    },
\    'wanshoujuhuang': {
\        'hex': '#fb8b05',
\        'name': '万寿菊黄',
\        'pinyin': 'wanshoujuhuang'
\    },
\    'wasonglv': {
\        'hex': '#6e8b74',
\        'name': '瓦松绿',
\        'pinyin': 'wasonglv'
\    },
\    'weilan': {
\        'hex': '#29b7cb',
\        'name': '蔚蓝',
\        'pinyin': 'weilan'
\    },
\    'weizi': {
\        'hex': '#7e1671',
\        'name': '魏紫',
\        'pinyin': 'weizi'
\    },
\    'wenpohong': {
\        'hex': '#ed2f6a',
\        'name': '榲桲红',
\        'pinyin': 'wenpohong'
\    },
\    'wuhuaguohong': {
\        'hex': '#efafad',
\        'name': '无花果红',
\        'pinyin': 'wuhuaguohong'
\    },
\    'wumeizi': {
\        'hex': '#1e131d',
\        'name': '乌梅紫',
\        'pinyin': 'wumeizi'
\    },
\    'wuzhilv': {
\        'hex': '#69a794',
\        'name': '梧枝绿',
\        'pinyin': 'wuzhilv'
\    },
\    'xiaguanghong': {
\        'hex': '#ef82a0',
\        'name': '霞光红',
\        'pinyin': 'xiaguanghong'
\    },
\    'xiakeqing': {
\        'hex': '#869d9d',
\        'name': '虾壳青',
\        'pinyin': 'xiakeqing'
\    },
\    'xiancaihong': {
\        'hex': '#a61b29',
\        'name': '苋菜红',
\        'pinyin': 'xiancaihong'
\    },
\    'xiancaizi': {
\        'hex': '#9b1e64',
\        'name': '苋菜紫',
\        'pinyin': 'xiancaizi'
\    },
\    'xiangjiaohuang': {
\        'hex': '#e4bf11',
\        'name': '香蕉黄',
\        'pinyin': 'xiangjiaohuang'
\    },
\    'xiangrikuihuang': {
\        'hex': '#fecc11',
\        'name': '向日葵黄',
\        'pinyin': 'xiangrikuihuang'
\    },
\    'xiangshuimeiguihuang': {
\        'hex': '#f7da94',
\        'name': '香水玫瑰黄',
\        'pinyin': 'xiangshuimeiguihuang'
\    },
\    'xiangshuzong': {
\        'hex': '#773d31',
\        'name': '橡树棕',
\        'pinyin': 'xiangshuzong'
\    },
\    'xiangyabai': {
\        'hex': '#fffef8',
\        'name': '象牙白',
\        'pinyin': 'xiangyabai'
\    },
\    'xiangyahuang': {
\        'hex': '#f0d695',
\        'name': '象牙黄',
\        'pinyin': 'xiangyahuang'
\    },
\    'xiangyehong': {
\        'hex': '#f07c82',
\        'name': '香叶红',
\        'pinyin': 'xiangyehong'
\    },
\    'xianlv': {
\        'hex': '#43b244',
\        'name': '鲜绿',
\        'pinyin': 'xianlv'
\    },
\    'xiaohui': {
\        'hex': '#d4c4b7',
\        'name': '晓灰',
\        'pinyin': 'xiaohui'
\    },
\    'xiayunhui': {
\        'hex': '#617172',
\        'name': '夏云灰',
\        'pinyin': 'xiayunhui'
\    },
\    'xidanhong': {
\        'hex': '#ec2c64',
\        'name': '喜蛋红',
\        'pinyin': 'xidanhong'
\    },
\    'xiekehong': {
\        'hex': '#f27635',
\        'name': '蟹壳红',
\        'pinyin': 'xiekehong'
\    },
\    'xiekehui': {
\        'hex': '#695e45',
\        'name': '蟹壳灰',
\        'pinyin': 'xiekehui'
\    },
\    'xiekelv': {
\        'hex': '#513c20',
\        'name': '蟹壳绿',
\        'pinyin': 'xiekelv'
\    },
\    'xiemaohong': {
\        'hex': '#b14b28',
\        'name': '蟹蝥红',
\        'pinyin': 'xiemaohong'
\    },
\    'xinghuang': {
\        'hex': '#f28e16',
\        'name': '杏黄',
\        'pinyin': 'xinghuang'
\    },
\    'xinghui': {
\        'hex': '#b2bbbe',
\        'name': '星灰',
\        'pinyin': 'xinghui'
\    },
\    'xinglan': {
\        'hex': '#93b5cf',
\        'name': '星蓝',
\        'pinyin': 'xinglan'
\    },
\    'xingrenhuang': {
\        'hex': '#f7e8aa',
\        'name': '杏仁黄',
\        'pinyin': 'xingrenhuang'
\    },
\    'xinhelv': {
\        'hex': '#d2b116',
\        'name': '新禾绿',
\        'pinyin': 'xinhelv'
\    },
\    'xinhui': {
\        'hex': '#7a7374',
\        'name': '锌灰',
\        'pinyin': 'xinhui'
\    },
\    'xionghuang': {
\        'hex': '#ff9900',
\        'name': '雄黄',
\        'pinyin': 'xionghuang'
\    },
\    'xiyanghong': {
\        'hex': '#de2a18',
\        'name': '夕阳红',
\        'pinyin': 'xiyanghong'
\    },
\    'xuebai': {
\        'hex': '#fffef9',
\        'name': '雪白',
\        'pinyin': 'xuebai'
\    },
\    'xunzi': {
\        'hex': '#815c94',
\        'name': '蕈紫',
\        'pinyin': 'xunzi'
\    },
\    'yadinglv': {
\        'hex': '#428675',
\        'name': '亚丁绿',
\        'pinyin': 'yadinglv'
\    },
\    'yalihuang': {
\        'hex': '#fbc82f',
\        'name': '雅梨黄',
\        'pinyin': 'yalihuang'
\    },
\    'yalv': {
\        'hex': '#96c24e',
\        'name': '芽绿',
\        'pinyin': 'yalv'
\    },
\    'yangcongzi': {
\        'hex': '#a8456b',
\        'name': '洋葱紫',
\        'pinyin': 'yangcongzi'
\    },
\    'yangshuixianhong': {
\        'hex': '#f4c7ba',
\        'name': '洋水仙红',
\        'pinyin': 'yangshuixianhong'
\    },
\    'yanhanhong': {
\        'hex': '#fc6315',
\        'name': '燕颔红',
\        'pinyin': 'yanhanhong'
\    },
\    'yanhanlan': {
\        'hex': '#131824',
\        'name': '燕颔蓝',
\        'pinyin': 'yanhanlan'
\    },
\    'yanhong': {
\        'hex': '#82111f',
\        'name': '殷红',
\        'pinyin': 'yanhong'
\    },
\    'yanhui': {
\        'hex': '#80766e',
\        'name': '雁灰',
\        'pinyin': 'yanhui'
\    },
\    'yanlan': {
\        'hex': '#144a74',
\        'name': '鷃蓝',
\        'pinyin': 'yanlan'
\    },
\    'yanshizong': {
\        'hex': '#964d22',
\        'name': '岩石棕',
\        'pinyin': 'yanshizong'
\    },
\    'yanyuhui': {
\        'hex': '#685e48',
\        'name': '燕羽灰',
\        'pinyin': 'yanyuhui'
\    },
\    'yanzhihong': {
\        'hex': '#f03f24',
\        'name': '胭脂红',
\        'pinyin': 'yanzhihong'
\    },
\    'yaoguanzi': {
\        'hex': '#621d34',
\        'name': '鹞冠紫',
\        'pinyin': 'yaoguanzi'
\    },
\    'yaohuang': {
\        'hex': '#d0deaa',
\        'name': '姚黄',
\        'pinyin': 'yaohuang'
\    },
\    'yehui': {
\        'hex': '#847c74',
\        'name': '夜灰',
\        'pinyin': 'yehui'
\    },
\    'yejuzi': {
\        'hex': '#525288',
\        'name': '野菊紫',
\        'pinyin': 'yejuzi'
\    },
\    'yekezong': {
\        'hex': '#883a1e',
\        'name': '椰壳棕',
\        'pinyin': 'yekezong'
\    },
\    'yeputaozi': {
\        'hex': '#302f4b',
\        'name': '野葡萄紫',
\        'pinyin': 'yeputaozi'
\    },
\    'yeqiangweihong': {
\        'hex': '#fb9968',
\        'name': '野蔷薇红',
\        'pinyin': 'yeqiangweihong'
\    },
\    'yililv': {
\        'hex': '#835e1d',
\        'name': '蜴蜊绿',
\        'pinyin': 'yililv'
\    },
\    'yinbai': {
\        'hex': '#f1f0ed',
\        'name': '银白',
\        'pinyin': 'yinbai'
\    },
\    'yingcaozi': {
\        'hex': '#c06f98',
\        'name': '樱草紫',
\        'pinyin': 'yingcaozi'
\    },
\    'yingtaohong': {
\        'hex': '#ed3321',
\        'name': '樱桃红',
\        'pinyin': 'yingtaohong'
\    },
\    'yingwuguanhuang': {
\        'hex': '#f6c430',
\        'name': '鹦鹉冠黄',
\        'pinyin': 'yingwuguanhuang'
\    },
\    'yingwulv': {
\        'hex': '#5bae23',
\        'name': '鹦鹉绿',
\        'pinyin': 'yingwulv'
\    },
\    'yinhonghui': {
\        'hex': '#b598a1',
\        'name': '隐红灰',
\        'pinyin': 'yinhonghui'
\    },
\    'yinhui': {
\        'hex': '#918072',
\        'name': '银灰',
\        'pinyin': 'yinhui'
\    },
\    'yinshuhui': {
\        'hex': '#b5aa90',
\        'name': '银鼠灰',
\        'pinyin': 'yinshuhui'
\    },
\    'yinyubai': {
\        'hex': '#cdd1d3',
\        'name': '银鱼白',
\        'pinyin': 'yinyubai'
\    },
\    'yinzhu': {
\        'hex': '#f43e06',
\        'name': '银朱',
\        'pinyin': 'yinzhu'
\    },
\    'youcaihuahuang': {
\        'hex': '#fbda41',
\        'name': '油菜花黄',
\        'pinyin': 'youcaihuahuang'
\    },
\    'youhuang': {
\        'hex': '#f1ca17',
\        'name': '柚黄',
\        'pinyin': 'youhuang'
\    },
\    'youlan': {
\        'hex': '#1781b5',
\        'name': '釉蓝',
\        'pinyin': 'youlan'
\    },
\    'youlv': {
\        'hex': '#253d24',
\        'name': '油绿',
\        'pinyin': 'youlv'
\    },
\    'yuanshanzi': {
\        'hex': '#ccccd6',
\        'name': '远山紫',
\        'pinyin': 'yuanshanzi'
\    },
\    'yuantianlan': {
\        'hex': '#d0dfe6',
\        'name': '远天蓝',
\        'pinyin': 'yuantianlan'
\    },
\    'yuanweilan': {
\        'hex': '#158bb8',
\        'name': '鸢尾蓝',
\        'pinyin': 'yuanweilan'
\    },
\    'yudubai': {
\        'hex': '#f7f4ed',
\        'name': '鱼肚白',
\        'pinyin': 'yudubai'
\    },
\    'yuebai': {
\        'hex': '#eef7f2',
\        'name': '月白',
\        'pinyin': 'yuebai'
\    },
\    'yuehui': {
\        'hex': '#b7ae8f',
\        'name': '月灰',
\        'pinyin': 'yuehui'
\    },
\    'yuejihong': {
\        'hex': '#ce5777',
\        'name': '月季红',
\        'pinyin': 'yuejihong'
\    },
\    'yueyingbai': {
\        'hex': '#c0c4c3',
\        'name': '月影白',
\        'pinyin': 'yueyingbai'
\    },
\    'yufenhong': {
\        'hex': '#e8b49a',
\        'name': '玉粉红',
\        'pinyin': 'yufenhong'
\    },
\    'yuhong': {
\        'hex': '#c04851',
\        'name': '玉红',
\        'pinyin': 'yuhong'
\    },
\    'yujinhong': {
\        'hex': '#cf7543',
\        'name': '余烬红',
\        'pinyin': 'yujinhong'
\    },
\    'yunfengbai': {
\        'hex': '#d8e3e7',
\        'name': '云峰白',
\        'pinyin': 'yunfengbai'
\    },
\    'yunshanlan': {
\        'hex': '#2f90b9',
\        'name': '云山蓝',
\        'pinyin': 'yunshanlan'
\    },
\    'yunshanlv': {
\        'hex': '#15231b',
\        'name': '云杉绿',
\        'pinyin': 'yunshanlv'
\    },
\    'yunshuilan': {
\        'hex': '#baccd9',
\        'name': '云水蓝',
\        'pinyin': 'yunshuilan'
\    },
\    'yuqinlan': {
\        'hex': '#126e82',
\        'name': '玉鈫蓝',
\        'pinyin': 'yuqinlan'
\    },
\    'yusaihong': {
\        'hex': '#ed3b2f',
\        'name': '鱼鳃红',
\        'pinyin': 'yusaihong'
\    },
\    'yushandoulan': {
\        'hex': '#619ac3',
\        'name': '羽扇豆蓝',
\        'pinyin': 'yushandoulan'
\    },
\    'yusuilv': {
\        'hex': '#41b349',
\        'name': '玉髓绿',
\        'pinyin': 'yusuilv'
\    },
\    'yuweihui': {
\        'hex': '#5e616d',
\        'name': '鱼尾灰',
\        'pinyin': 'yuweihui'
\    },
\    'yuzanlv': {
\        'hex': '#a4cab6',
\        'name': '玉簪绿',
\        'pinyin': 'yuzanlv'
\    },
\    'zaohong': {
\        'hex': '#7c1823',
\        'name': '枣红',
\        'pinyin': 'zaohong'
\    },
\    'zhanjianhui': {
\        'hex': '#495c69',
\        'name': '战舰灰',
\        'pinyin': 'zhanjianhui'
\    },
\    'zhayezong': {
\        'hex': '#692a1b',
\        'name': '柞叶棕',
\        'pinyin': 'zhayezong'
\    },
\    'zhenzhuhui': {
\        'hex': '#e4dfd7',
\        'name': '珍珠灰',
\        'pinyin': 'zhenzhuhui'
\    },
\    'zheshi': {
\        'hex': '#862617',
\        'name': '赭石',
\        'pinyin': 'zheshi'
\    },
\    'zhilanzi': {
\        'hex': '#e9ccd3',
\        'name': '芝兰紫',
\        'pinyin': 'zhilanzi'
\    },
\    'zhizihuang': {
\        'hex': '#ebb10d',
\        'name': '栀子黄',
\        'pinyin': 'zhizihuang'
\    },
\    'zhonghonghui': {
\        'hex': '#8b614d',
\        'name': '中红灰',
\        'pinyin': 'zhonghonghui'
\    },
\    'zhonghui': {
\        'hex': '#bbb5ac',
\        'name': '中灰',
\        'pinyin': 'zhonghui'
\    },
\    'zhonghuituo': {
\        'hex': '#603d30',
\        'name': '中灰驼',
\        'pinyin': 'zhonghuituo'
\    },
\    'zhuganzi': {
\        'hex': '#541e24',
\        'name': '猪肝紫',
\        'pinyin': 'zhuganzi'
\    },
\    'zhuhong': {
\        'hex': '#ed5126',
\        'name': '朱红',
\        'pinyin': 'zhuhong'
\    },
\    'zhuhuanglv': {
\        'hex': '#b9dec9',
\        'name': '竹篁绿',
\        'pinyin': 'zhuhuanglv'
\    },
\    'zhulv': {
\        'hex': '#1ba784',
\        'name': '竹绿',
\        'pinyin': 'zhulv'
\    },
\    'zhumuhui': {
\        'hex': '#64483d',
\        'name': '珠母灰',
\        'pinyin': 'zhumuhui'
\    },
\    'zhuwanghui': {
\        'hex': '#b7a091',
\        'name': '蛛网灰',
\        'pinyin': 'zhuwanghui'
\    },
\    'zihui': {
\        'hex': '#5d3f51',
\        'name': '紫灰',
\        'pinyin': 'zihui'
\    },
\    'zijinghong': {
\        'hex': '#ee2c79',
\        'name': '紫荆红',
\        'pinyin': 'zijinghong'
\    },
\    'zizi': {
\        'hex': '#894276',
\        'name': '芓紫',
\        'pinyin': 'zizi'
\    },
\    'zonglvlv': {
\        'hex': '#5b4913',
\        'name': '棕榈绿',
\        'pinyin': 'zonglvlv'
\    },
\    'zongyelv': {
\        'hex': '#876818',
\        'name': '粽叶绿',
\        'pinyin': 'zongyelv'
\    },
\    'zuiguarou': {
\        'hex': '#db8540',
\        'name': '醉瓜肉',
\        'pinyin': 'zuiguarou'
\    },
\    'jijindouhong': {
\        'hex': '#da5162',
\        'name': '基金豆红',
\        'pinyin': 'jijindouhong'
\    }
\}

let g:color#colors = keys(color_name#hex_map)
let g:color#names = keys(name_color#name_map)
let g:color#pinyin = keys(color#pinyin_map)
