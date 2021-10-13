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
\    }
\}


let g:color#hex_map = {
\    '#0eb0c9': {
\        'hex': '#0eb0c9',
\        'name': '孔雀蓝',
\        'pinyin': 'kongquelan'
\    },
\    '#0f1423': {
\        'hex': '#0f1423',
\        'name': '钢蓝',
\        'pinyin': 'ganglan'
\    },
\    '#0f59a4': {
\        'hex': '#0f59a4',
\        'name': '飞燕草蓝',
\        'pinyin': 'feiyancaolan'
\    },
\    '#0f95b0': {
\        'hex': '#0f95b0',
\        'name': '胆矾蓝',
\        'pinyin': 'danfanlan'
\    },
\    '#101f30': {
\        'hex': '#101f30',
\        'name': '暗蓝',
\        'pinyin': 'anlan'
\    },
\    '#10aec2': {
\        'hex': '#10aec2',
\        'name': '甸子蓝',
\        'pinyin': 'dianzilan'
\    },
\    '#11659a': {
\        'hex': '#11659a',
\        'name': '搪磁蓝',
\        'pinyin': 'tangcilan'
\    },
\    '#1177b0': {
\        'hex': '#1177b0',
\        'name': '牵牛花蓝',
\        'pinyin': 'qianniuhualan'
\    },
\    '#126bae': {
\        'hex': '#126bae',
\        'name': '柏林蓝',
\        'pinyin': 'bolinlan'
\    },
\    '#126e82': {
\        'hex': '#126e82',
\        'name': '玉鈫蓝',
\        'pinyin': 'yuqinlan'
\    },
\    '#12a182': {
\        'hex': '#12a182',
\        'name': '蓝绿',
\        'pinyin': 'lanlv'
\    },
\    '#12aa9c': {
\        'hex': '#12aa9c',
\        'name': '美蝶绿',
\        'pinyin': 'meidielv'
\    },
\    '#131124': {
\        'hex': '#131124',
\        'name': '暗蓝紫',
\        'pinyin': 'anlanzi'
\    },
\    '#131824': {
\        'hex': '#131824',
\        'name': '燕颔蓝',
\        'pinyin': 'yanhanlan'
\    },
\    '#132c33': {
\        'hex': '#132c33',
\        'name': '深灰蓝',
\        'pinyin': 'shenhuilan'
\    },
\    '#134857': {
\        'hex': '#134857',
\        'name': '苍蓝',
\        'pinyin': 'canglan'
\    },
\    '#141e1b': {
\        'hex': '#141e1b',
\        'name': '莽丛绿',
\        'pinyin': 'mangconglv'
\    },
\    '#142334': {
\        'hex': '#142334',
\        'name': '钢青',
\        'pinyin': 'gangqing'
\    },
\    '#144a74': {
\        'hex': '#144a74',
\        'name': '鷃蓝',
\        'pinyin': 'yanlan'
\    },
\    '#1491a8': {
\        'hex': '#1491a8',
\        'name': '樫鸟蓝',
\        'pinyin': 'jianniaolan'
\    },
\    '#15231b': {
\        'hex': '#15231b',
\        'name': '云杉绿',
\        'pinyin': 'yunshanlv'
\    },
\    '#15559a': {
\        'hex': '#15559a',
\        'name': '海涛蓝',
\        'pinyin': 'haitaolan'
\    },
\    '#158bb8': {
\        'hex': '#158bb8',
\        'name': '鸢尾蓝',
\        'pinyin': 'yuanweilan'
\    },
\    '#1661ab': {
\        'hex': '#1661ab',
\        'name': '靛青',
\        'pinyin': 'dianqing'
\    },
\    '#1677b3': {
\        'hex': '#1677b3',
\        'name': '天蓝',
\        'pinyin': 'tianlan'
\    },
\    '#1772b4': {
\        'hex': '#1772b4',
\        'name': '群青',
\        'pinyin': 'qunqing'
\    },
\    '#1781b5': {
\        'hex': '#1781b5',
\        'name': '釉蓝',
\        'pinyin': 'youlan'
\    },
\    '#1a3b32': {
\        'hex': '#1a3b32',
\        'name': '深海绿',
\        'pinyin': 'shenhailv'
\    },
\    '#1a6840': {
\        'hex': '#1a6840',
\        'name': '荷叶绿',
\        'pinyin': 'heyelv'
\    },
\    '#1a94bc': {
\        'hex': '#1a94bc',
\        'name': '钴蓝',
\        'pinyin': 'gulan'
\    },
\    '#1ba784': {
\        'hex': '#1ba784',
\        'name': '竹绿',
\        'pinyin': 'zhulv'
\    },
\    '#1c0d1a': {
\        'hex': '#1c0d1a',
\        'name': '深牵牛紫',
\        'pinyin': 'shenqianniuzi'
\    },
\    '#1c2938': {
\        'hex': '#1c2938',
\        'name': '鸽蓝',
\        'pinyin': 'gelan'
\    },
\    '#1e131d': {
\        'hex': '#1e131d',
\        'name': '乌梅紫',
\        'pinyin': 'wumeizi'
\    },
\    '#1e9eb3': {
\        'hex': '#1e9eb3',
\        'name': '翠蓝',
\        'pinyin': 'cuilan'
\    },
\    '#1f2040': {
\        'hex': '#1f2040',
\        'name': '晶石紫',
\        'pinyin': 'jingshizi'
\    },
\    '#1f2623': {
\        'hex': '#1f2623',
\        'name': '苷蓝绿',
\        'pinyin': 'ganlanlv'
\    },
\    '#207f4c': {
\        'hex': '#207f4c',
\        'name': '薄荷绿',
\        'pinyin': 'bohelv'
\    },
\    '#20894d': {
\        'hex': '#20894d',
\        'name': '宫殿绿',
\        'pinyin': 'gongdianlv'
\    },
\    '#20a162': {
\        'hex': '#20a162',
\        'name': '翠绿',
\        'pinyin': 'cuilv'
\    },
\    '#21373d': {
\        'hex': '#21373d',
\        'name': '灰蓝',
\        'pinyin': 'huilan'
\    },
\    '#2177b8': {
\        'hex': '#2177b8',
\        'name': '虹蓝',
\        'pinyin': 'honglan'
\    },
\    '#22202e': {
\        'hex': '#22202e',
\        'name': '暗龙胆紫',
\        'pinyin': 'anlongdanzi'
\    },
\    '#223e36': {
\        'hex': '#223e36',
\        'name': '苍绿',
\        'pinyin': 'canglv'
\    },
\    '#229453': {
\        'hex': '#229453',
\        'name': '孔雀绿',
\        'pinyin': 'kongquelv'
\    },
\    '#22a2c3': {
\        'hex': '#22a2c3',
\        'name': '海青',
\        'pinyin': 'haiqing'
\    },
\    '#2376b7': {
\        'hex': '#2376b7',
\        'name': '花青',
\        'pinyin': 'huaqing'
\    },
\    '#2474b5': {
\        'hex': '#2474b5',
\        'name': '尼罗蓝',
\        'pinyin': 'niluolan'
\    },
\    '#248067': {
\        'hex': '#248067',
\        'name': '海王绿',
\        'pinyin': 'haiwanglv'
\    },
\    '#2486b9': {
\        'hex': '#2486b9',
\        'name': '宝石蓝',
\        'pinyin': 'baoshilan'
\    },
\    '#253d24': {
\        'hex': '#253d24',
\        'name': '油绿',
\        'pinyin': 'youlv'
\    },
\    '#2775b6': {
\        'hex': '#2775b6',
\        'name': '景泰蓝',
\        'pinyin': 'jingtailan'
\    },
\    '#2983bb': {
\        'hex': '#2983bb',
\        'name': '潮蓝',
\        'pinyin': 'chaolan'
\    },
\    '#29b7cb': {
\        'hex': '#29b7cb',
\        'name': '蔚蓝',
\        'pinyin': 'weilan'
\    },
\    '#2b1216': {
\        'hex': '#2b1216',
\        'name': '李紫',
\        'pinyin': 'lizi'
\    },
\    '#2b312c': {
\        'hex': '#2b312c',
\        'name': '槲寄生绿',
\        'pinyin': 'hujishenglv'
\    },
\    '#2b333e': {
\        'hex': '#2b333e',
\        'name': '青灰',
\        'pinyin': 'qinghui'
\    },
\    '#2b73af': {
\        'hex': '#2b73af',
\        'name': '品蓝',
\        'pinyin': 'pinlan'
\    },
\    '#2bae85': {
\        'hex': '#2bae85',
\        'name': '铜绿',
\        'pinyin': 'tonglv'
\    },
\    '#2c9678': {
\        'hex': '#2c9678',
\        'name': '青矾绿',
\        'pinyin': 'qingfanlv'
\    },
\    '#2d0c13': {
\        'hex': '#2d0c13',
\        'name': '茄皮紫',
\        'pinyin': 'qiepizi'
\    },
\    '#2d2e36': {
\        'hex': '#2d2e36',
\        'name': '牛角灰',
\        'pinyin': 'niujiaohui'
\    },
\    '#2e317c': {
\        'hex': '#2e317c',
\        'name': '满天星紫',
\        'pinyin': 'mantianxingzi'
\    },
\    '#2f2f35': {
\        'hex': '#2f2f35',
\        'name': '水牛灰',
\        'pinyin': 'shuiniuhui'
\    },
\    '#2f90b9': {
\        'hex': '#2f90b9',
\        'name': '云山蓝',
\        'pinyin': 'yunshanlan'
\    },
\    '#30161c': {
\        'hex': '#30161c',
\        'name': '卵石紫',
\        'pinyin': 'luanshizi'
\    },
\    '#302f4b': {
\        'hex': '#302f4b',
\        'name': '野葡萄紫',
\        'pinyin': 'yeputaozi'
\    },
\    '#310f1b': {
\        'hex': '#310f1b',
\        'name': '墨紫',
\        'pinyin': 'mozi'
\    },
\    '#314a43': {
\        'hex': '#314a43',
\        'name': '绿灰',
\        'pinyin': 'lvhui'
\    },
\    '#3170a7': {
\        'hex': '#3170a7',
\        'name': '安安蓝',
\        'pinyin': 'ananlan'
\    },
\    '#322f3b': {
\        'hex': '#322f3b',
\        'name': '龙葵紫',
\        'pinyin': 'longkuizi'
\    },
\    '#33141e': {
\        'hex': '#33141e',
\        'name': '火鹅紫',
\        'pinyin': 'huoezi'
\    },
\    '#346c9c': {
\        'hex': '#346c9c',
\        'name': '海军蓝',
\        'pinyin': 'haijunlan'
\    },
\    '#35333c': {
\        'hex': '#35333c',
\        'name': '沙鱼灰',
\        'pinyin': 'shayuhui'
\    },
\    '#36282b': {
\        'hex': '#36282b',
\        'name': '苍蝇灰',
\        'pinyin': 'cangyinghui'
\    },
\    '#36292f': {
\        'hex': '#36292f',
\        'name': '古鼎灰',
\        'pinyin': 'gudinghui'
\    },
\    '#363433': {
\        'hex': '#363433',
\        'name': '长石灰',
\        'pinyin': 'changshihui'
\    },
\    '#373834': {
\        'hex': '#373834',
\        'name': '蒽油绿',
\        'pinyin': 'enyoulv'
\    },
\    '#381924': {
\        'hex': '#381924',
\        'name': '檀紫',
\        'pinyin': 'tanzi'
\    },
\    '#382129': {
\        'hex': '#382129',
\        'name': '磨石紫',
\        'pinyin': 'moshizi'
\    },
\    '#393733': {
\        'hex': '#393733',
\        'name': '河豚灰',
\        'pinyin': 'hetunhui'
\    },
\    '#3b818c': {
\        'hex': '#3b818c',
\        'name': '蜻蜓蓝',
\        'pinyin': 'qingtinglan'
\    },
\    '#3c9566': {
\        'hex': '#3c9566',
\        'name': '蟾绿',
\        'pinyin': 'chanlv'
\    },
\    '#3e3841': {
\        'hex': '#3e3841',
\        'name': '剑锋紫',
\        'pinyin': 'jianfengzi'
\    },
\    '#40a070': {
\        'hex': '#40a070',
\        'name': '葱绿',
\        'pinyin': 'conglv'
\    },
\    '#411c35': {
\        'hex': '#411c35',
\        'name': '荸荠紫',
\        'pinyin': 'biqizi'
\    },
\    '#41ae3c': {
\        'hex': '#41ae3c',
\        'name': '宝石绿',
\        'pinyin': 'baoshilv'
\    },
\    '#41b349': {
\        'hex': '#41b349',
\        'name': '玉髓绿',
\        'pinyin': 'yusuilv'
\    },
\    '#428675': {
\        'hex': '#428675',
\        'name': '亚丁绿',
\        'pinyin': 'yadinglv'
\    },
\    '#43b244': {
\        'hex': '#43b244',
\        'name': '鲜绿',
\        'pinyin': 'xianlv'
\    },
\    '#440e25': {
\        'hex': '#440e25',
\        'name': '古铜紫',
\        'pinyin': 'gutongzi'
\    },
\    '#45b787': {
\        'hex': '#45b787',
\        'name': '蛙绿',
\        'pinyin': 'walv'
\    },
\    '#461629': {
\        'hex': '#461629',
\        'name': '绀紫',
\        'pinyin': 'ganzi'
\    },
\    '#47484c': {
\        'hex': '#47484c',
\        'name': '瓦罐灰',
\        'pinyin': 'waguanhui'
\    },
\    '#474b4c': {
\        'hex': '#474b4c',
\        'name': '黄昏灰',
\        'pinyin': 'huanghunhui'
\    },
\    '#475164': {
\        'hex': '#475164',
\        'name': '鲸鱼灰',
\        'pinyin': 'jingyuhui'
\    },
\    '#481e1c': {
\        'hex': '#481e1c',
\        'name': '豆沙',
\        'pinyin': 'dousha'
\    },
\    '#482522': {
\        'hex': '#482522',
\        'name': '火山棕',
\        'pinyin': 'huoshanzong'
\    },
\    '#482936': {
\        'hex': '#482936',
\        'name': '斑鸠灰',
\        'pinyin': 'banjiuhui'
\    },
\    '#483332': {
\        'hex': '#483332',
\        'name': '海报灰',
\        'pinyin': 'haibaohui'
\    },
\    '#485b4d': {
\        'hex': '#485b4d',
\        'name': '白屈菜绿',
\        'pinyin': 'baiqucailv'
\    },
\    '#495c69': {
\        'hex': '#495c69',
\        'name': '战舰灰',
\        'pinyin': 'zhanjianhui'
\    },
\    '#497568': {
\        'hex': '#497568',
\        'name': '飞泉绿',
\        'pinyin': 'feiquanlv'
\    },
\    '#4a4035': {
\        'hex': '#4a4035',
\        'name': '鹤灰',
\        'pinyin': 'hehui'
\    },
\    '#4b1e2f': {
\        'hex': '#4b1e2f',
\        'name': '海象紫',
\        'pinyin': 'haixiangzi'
\    },
\    '#4b2e2b': {
\        'hex': '#4b2e2b',
\        'name': '玫瑰灰',
\        'pinyin': 'meiguihui'
\    },
\    '#4c1f24': {
\        'hex': '#4c1f24',
\        'name': '葡萄紫',
\        'pinyin': 'putaozi'
\    },
\    '#4d1018': {
\        'hex': '#4d1018',
\        'name': '酱紫',
\        'pinyin': 'jiangzi'
\    },
\    '#4d4030': {
\        'hex': '#4d4030',
\        'name': '淡松烟',
\        'pinyin': 'dansongyan'
\    },
\    '#4e2a40': {
\        'hex': '#4e2a40',
\        'name': '龙睛鱼紫',
\        'pinyin': 'longjingyuzi'
\    },
\    '#4e7ca1': {
\        'hex': '#4e7ca1',
\        'name': '蝶翅蓝',
\        'pinyin': 'diechilan'
\    },
\    '#4f383e': {
\        'hex': '#4f383e',
\        'name': '暮云灰',
\        'pinyin': 'muyunhui'
\    },
\    '#4f4032': {
\        'hex': '#4f4032',
\        'name': '松鼠灰',
\        'pinyin': 'songshuhui'
\    },
\    '#500a16': {
\        'hex': '#500a16',
\        'name': '金鱼紫',
\        'pinyin': 'jinyuzi'
\    },
\    '#503e2a': {
\        'hex': '#503e2a',
\        'name': '橄榄灰',
\        'pinyin': 'ganlanhui'
\    },
\    '#513c20': {
\        'hex': '#513c20',
\        'name': '蟹壳绿',
\        'pinyin': 'xiekelv'
\    },
\    '#51c4d3': {
\        'hex': '#51c4d3',
\        'name': '瀑布蓝',
\        'pinyin': 'pubulan'
\    },
\    '#525288': {
\        'hex': '#525288',
\        'name': '野菊紫',
\        'pinyin': 'yejuzi'
\    },
\    '#533c1b': {
\        'hex': '#533c1b',
\        'name': '古铜绿',
\        'pinyin': 'gutonglv'
\    },
\    '#541e24': {
\        'hex': '#541e24',
\        'name': '猪肝紫',
\        'pinyin': 'zhuganzi'
\    },
\    '#553b18': {
\        'hex': '#553b18',
\        'name': '焦茶绿',
\        'pinyin': 'jiaochalv'
\    },
\    '#55bb8a': {
\        'hex': '#55bb8a',
\        'name': '麦苗绿',
\        'pinyin': 'maimiaolv'
\    },
\    '#5698c3': {
\        'hex': '#5698c3',
\        'name': '睛蓝',
\        'pinyin': 'jinglan'
\    },
\    '#579572': {
\        'hex': '#579572',
\        'name': '蛋白石绿',
\        'pinyin': 'danbaishilv'
\    },
\    '#57c3c2': {
\        'hex': '#57c3c2',
\        'name': '石绿',
\        'pinyin': 'shilv'
\    },
\    '#584717': {
\        'hex': '#584717',
\        'name': '暗海水绿',
\        'pinyin': 'anhaishuilv'
\    },
\    '#592620': {
\        'hex': '#592620',
\        'name': '暗驼棕',
\        'pinyin': 'antuozong'
\    },
\    '#5a1216': {
\        'hex': '#5a1216',
\        'name': '葡萄酱紫',
\        'pinyin': 'putaojiangzi'
\    },
\    '#5a191b': {
\        'hex': '#5a191b',
\        'name': '栗紫',
\        'pinyin': 'lizi'
\    },
\    '#5a1f1b': {
\        'hex': '#5a1f1b',
\        'name': '酱棕',
\        'pinyin': 'jiangzong'
\    },
\    '#5b423a': {
\        'hex': '#5b423a',
\        'name': '淡铁灰',
\        'pinyin': 'dantiehui'
\    },
\    '#5b4913': {
\        'hex': '#5b4913',
\        'name': '棕榈绿',
\        'pinyin': 'zonglvlv'
\    },
\    '#5bae23': {
\        'hex': '#5bae23',
\        'name': '鹦鹉绿',
\        'pinyin': 'yingwulv'
\    },
\    '#5c1e19': {
\        'hex': '#5c1e19',
\        'name': '栗棕',
\        'pinyin': 'lizong'
\    },
\    '#5c2223': {
\        'hex': '#5c2223',
\        'name': '暗玉紫',
\        'pinyin': 'anyuzi'
\    },
\    '#5c3719': {
\        'hex': '#5c3719',
\        'name': '古铜褐',
\        'pinyin': 'gutonghe'
\    },
\    '#5cb3cc': {
\        'hex': '#5cb3cc',
\        'name': '碧青',
\        'pinyin': 'biqing'
\    },
\    '#5d3131': {
\        'hex': '#5d3131',
\        'name': '貂紫',
\        'pinyin': 'diaozi'
\    },
\    '#5d3d21': {
\        'hex': '#5d3d21',
\        'name': '茶褐',
\        'pinyin': 'chahe'
\    },
\    '#5d3f51': {
\        'hex': '#5d3f51',
\        'name': '紫灰',
\        'pinyin': 'zihui'
\    },
\    '#5d655f': {
\        'hex': '#5d655f',
\        'name': '狼烟灰',
\        'pinyin': 'langyanhui'
\    },
\    '#5dbe8a': {
\        'hex': '#5dbe8a',
\        'name': '蔻梢绿',
\        'pinyin': 'koushaolv'
\    },
\    '#5e5314': {
\        'hex': '#5e5314',
\        'name': '橄榄绿',
\        'pinyin': 'ganlanlv'
\    },
\    '#5e616d': {
\        'hex': '#5e616d',
\        'name': '鱼尾灰',
\        'pinyin': 'yuweihui'
\    },
\    '#5e665b': {
\        'hex': '#5e665b',
\        'name': '田螺绿',
\        'pinyin': 'tianluolv'
\    },
\    '#5e7987': {
\        'hex': '#5e7987',
\        'name': '淡蓝灰',
\        'pinyin': 'danlanhui'
\    },
\    '#603d30': {
\        'hex': '#603d30',
\        'name': '中灰驼',
\        'pinyin': 'zhonghuituo'
\    },
\    '#61649f': {
\        'hex': '#61649f',
\        'name': '山梗紫',
\        'pinyin': 'shangengzi'
\    },
\    '#617172': {
\        'hex': '#617172',
\        'name': '夏云灰',
\        'pinyin': 'xiayunhui'
\    },
\    '#619ac3': {
\        'hex': '#619ac3',
\        'name': '羽扇豆蓝',
\        'pinyin': 'yushandoulan'
\    },
\    '#61ac85': {
\        'hex': '#61ac85',
\        'name': '淡绿',
\        'pinyin': 'danlv'
\    },
\    '#62102e': {
\        'hex': '#62102e',
\        'name': '葡萄酒红',
\        'pinyin': 'putaojiuhong'
\    },
\    '#621624': {
\        'hex': '#621624',
\        'name': '甘蔗紫',
\        'pinyin': 'ganzhezi'
\    },
\    '#621d34': {
\        'hex': '#621d34',
\        'name': '鹞冠紫',
\        'pinyin': 'yaoguanzi'
\    },
\    '#624941': {
\        'hex': '#624941',
\        'name': '石板灰',
\        'pinyin': 'shibanhui'
\    },
\    '#63071c': {
\        'hex': '#63071c',
\        'name': '石竹紫',
\        'pinyin': 'shizhuzi'
\    },
\    '#63bbd0': {
\        'hex': '#63bbd0',
\        'name': '霁青',
\        'pinyin': 'jiqing'
\    },
\    '#64483d': {
\        'hex': '#64483d',
\        'name': '珠母灰',
\        'pinyin': 'zhumuhui'
\    },
\    '#645822': {
\        'hex': '#645822',
\        'name': '潭水绿',
\        'pinyin': 'tanshuilv'
\    },
\    '#648e93': {
\        'hex': '#648e93',
\        'name': '晚波蓝',
\        'pinyin': 'wanbolan'
\    },
\    '#652b1c': {
\        'hex': '#652b1c',
\        'name': '可可棕',
\        'pinyin': 'kekezong'
\    },
\    '#66462a': {
\        'hex': '#66462a',
\        'name': '驼色',
\        'pinyin': 'tuose'
\    },
\    '#66a9c9': {
\        'hex': '#66a9c9',
\        'name': '涧石蓝',
\        'pinyin': 'jianshilan'
\    },
\    '#66c18c': {
\        'hex': '#66c18c',
\        'name': '毛绿',
\        'pinyin': 'maolv'
\    },
\    '#673424': {
\        'hex': '#673424',
\        'name': '淡栗棕',
\        'pinyin': 'danlizong'
\    },
\    '#681752': {
\        'hex': '#681752',
\        'name': '牵牛紫',
\        'pinyin': 'qianniuzi'
\    },
\    '#685e48': {
\        'hex': '#685e48',
\        'name': '燕羽灰',
\        'pinyin': 'yanyuhui'
\    },
\    '#68b88e': {
\        'hex': '#68b88e',
\        'name': '田园绿',
\        'pinyin': 'tianyuanlv'
\    },
\    '#692a1b': {
\        'hex': '#692a1b',
\        'name': '柞叶棕',
\        'pinyin': 'zhayezong'
\    },
\    '#695e45': {
\        'hex': '#695e45',
\        'name': '蟹壳灰',
\        'pinyin': 'xiekehui'
\    },
\    '#69a794': {
\        'hex': '#69a794',
\        'name': '梧枝绿',
\        'pinyin': 'wuzhilv'
\    },
\    '#6e8b74': {
\        'hex': '#6e8b74',
\        'name': '瓦松绿',
\        'pinyin': 'wasonglv'
\    },
\    '#70887d': {
\        'hex': '#70887d',
\        'name': '淡绿灰',
\        'pinyin': 'danlvhui'
\    },
\    '#71361d': {
\        'hex': '#71361d',
\        'name': '丁香棕',
\        'pinyin': 'dingxiangzong'
\    },
\    '#732e12': {
\        'hex': '#732e12',
\        'name': '筍皮棕',
\        'pinyin': 'sunpizong'
\    },
\    '#73575c': {
\        'hex': '#73575c',
\        'name': '鼠背灰',
\        'pinyin': 'shubeihui'
\    },
\    '#737c7b': {
\        'hex': '#737c7b',
\        'name': '垩灰',
\        'pinyin': 'ehui'
\    },
\    '#74759b': {
\        'hex': '#74759b',
\        'name': '螺甸紫',
\        'pinyin': 'luodianzi'
\    },
\    '#74787a': {
\        'hex': '#74787a',
\        'name': '嫩灰',
\        'pinyin': 'nenhui'
\    },
\    '#753117': {
\        'hex': '#753117',
\        'name': '咖啡',
\        'pinyin': 'kafei'
\    },
\    '#773d31': {
\        'hex': '#773d31',
\        'name': '橡树棕',
\        'pinyin': 'xiangshuzong'
\    },
\    '#7a7374': {
\        'hex': '#7a7374',
\        'name': '锌灰',
\        'pinyin': 'xinhui'
\    },
\    '#7c1823': {
\        'hex': '#7c1823',
\        'name': '枣红',
\        'pinyin': 'zaohong'
\    },
\    '#7cabb1': {
\        'hex': '#7cabb1',
\        'name': '闪蓝',
\        'pinyin': 'shanlan'
\    },
\    '#7e1671': {
\        'hex': '#7e1671',
\        'name': '魏紫',
\        'pinyin': 'weizi'
\    },
\    '#7e2065': {
\        'hex': '#7e2065',
\        'name': '葛巾紫',
\        'pinyin': 'gejinzi'
\    },
\    '#806332': {
\        'hex': '#806332',
\        'name': '苍黄',
\        'pinyin': 'canghuang'
\    },
\    '#806d9e': {
\        'hex': '#806d9e',
\        'name': '槿紫',
\        'pinyin': 'jinzi'
\    },
\    '#80766e': {
\        'hex': '#80766e',
\        'name': '雁灰',
\        'pinyin': 'yanhui'
\    },
\    '#8076a3': {
\        'hex': '#8076a3',
\        'name': '藤萝紫',
\        'pinyin': 'tengluozi'
\    },
\    '#813c85': {
\        'hex': '#813c85',
\        'name': '桔梗紫',
\        'pinyin': 'jiegengzi'
\    },
\    '#815c94': {
\        'hex': '#815c94',
\        'name': '蕈紫',
\        'pinyin': 'xunzi'
\    },
\    '#815f25': {
\        'hex': '#815f25',
\        'name': '莱阳梨黄',
\        'pinyin': 'laiyanglihuang'
\    },
\    '#81776e': {
\        'hex': '#81776e',
\        'name': '深灰',
\        'pinyin': 'shenhui'
\    },
\    '#82111f': {
\        'hex': '#82111f',
\        'name': '殷红',
\        'pinyin': 'yanhong'
\    },
\    '#82202b': {
\        'hex': '#82202b',
\        'name': '暗紫苑红',
\        'pinyin': 'anziyuanhong'
\    },
\    '#826b48': {
\        'hex': '#826b48',
\        'name': '龟背黄',
\        'pinyin': 'guibeihuang'
\    },
\    '#835e1d': {
\        'hex': '#835e1d',
\        'name': '蜴蜊绿',
\        'pinyin': 'yililv'
\    },
\    '#83a78d': {
\        'hex': '#83a78d',
\        'name': '松霜绿',
\        'pinyin': 'songshuanglv'
\    },
\    '#83cbac': {
\        'hex': '#83cbac',
\        'name': '粉绿',
\        'pinyin': 'fenlv'
\    },
\    '#847c74': {
\        'hex': '#847c74',
\        'name': '夜灰',
\        'pinyin': 'yehui'
\    },
\    '#856d72': {
\        'hex': '#856d72',
\        'name': '芦灰',
\        'pinyin': 'luhui'
\    },
\    '#862617': {
\        'hex': '#862617',
\        'name': '赭石',
\        'pinyin': 'zheshi'
\    },
\    '#863020': {
\        'hex': '#863020',
\        'name': '火岩棕',
\        'pinyin': 'huoyanzong'
\    },
\    '#867018': {
\        'hex': '#867018',
\        'name': '碧螺春绿',
\        'pinyin': 'biluochunlv'
\    },
\    '#867e76': {
\        'hex': '#867e76',
\        'name': '瓦灰',
\        'pinyin': 'wahui'
\    },
\    '#869d9d': {
\        'hex': '#869d9d',
\        'name': '虾壳青',
\        'pinyin': 'xiakeqing'
\    },
\    '#873d24': {
\        'hex': '#873d24',
\        'name': '淡豆沙',
\        'pinyin': 'dandousha'
\    },
\    '#876818': {
\        'hex': '#876818',
\        'name': '粽叶绿',
\        'pinyin': 'zongyelv'
\    },
\    '#87723e': {
\        'hex': '#87723e',
\        'name': '鲛青',
\        'pinyin': 'jiaoqing'
\    },
\    '#883a1e': {
\        'hex': '#883a1e',
\        'name': '椰壳棕',
\        'pinyin': 'yekezong'
\    },
\    '#887322': {
\        'hex': '#887322',
\        'name': '苔绿',
\        'pinyin': 'tailv'
\    },
\    '#894276': {
\        'hex': '#894276',
\        'name': '芓紫',
\        'pinyin': 'zizi'
\    },
\    '#894e54': {
\        'hex': '#894e54',
\        'name': '烟红',
\        'pinyin': 'yanhong'
\    },
\    '#8a6913': {
\        'hex': '#8a6913',
\        'name': '灰绿',
\        'pinyin': 'huilv'
\    },
\    '#8a988e': {
\        'hex': '#8a988e',
\        'name': '明灰',
\        'pinyin': 'minghui'
\    },
\    '#8abcd1': {
\        'hex': '#8abcd1',
\        'name': '秋波蓝',
\        'pinyin': 'qiubolan'
\    },
\    '#8b2671': {
\        'hex': '#8b2671',
\        'name': '青莲',
\        'pinyin': 'qinglian'
\    },
\    '#8b614d': {
\        'hex': '#8b614d',
\        'name': '中红灰',
\        'pinyin': 'zhonghonghui'
\    },
\    '#8c4b31': {
\        'hex': '#8c4b31',
\        'name': '淡土黄',
\        'pinyin': 'dantuhuang'
\    },
\    '#8cc269': {
\        'hex': '#8cc269',
\        'name': '水绿',
\        'pinyin': 'shuilv'
\    },
\    '#8e804b': {
\        'hex': '#8e804b',
\        'name': '草灰绿',
\        'pinyin': 'caohuilv'
\    },
\    '#8fb2c9': {
\        'hex': '#8fb2c9',
\        'name': '晴山蓝',
\        'pinyin': 'qingshanlan'
\    },
\    '#918072': {
\        'hex': '#918072',
\        'name': '银灰',
\        'pinyin': 'yinhui'
\    },
\    '#92b3a5': {
\        'hex': '#92b3a5',
\        'name': '浪花绿',
\        'pinyin': 'langhualv'
\    },
\    '#93b5cf': {
\        'hex': '#93b5cf',
\        'name': '星蓝',
\        'pinyin': 'xinglan'
\    },
\    '#93d5dc': {
\        'hex': '#93d5dc',
\        'name': '清水蓝',
\        'pinyin': 'qingshuilan'
\    },
\    '#945833': {
\        'hex': '#945833',
\        'name': '淡咖啡',
\        'pinyin': 'dankafei'
\    },
\    '#951c48': {
\        'hex': '#951c48',
\        'name': '菜头紫',
\        'pinyin': 'caitouzi'
\    },
\    '#954416': {
\        'hex': '#954416',
\        'name': '芒果棕',
\        'pinyin': 'mangguozong'
\    },
\    '#964d22': {
\        'hex': '#964d22',
\        'name': '岩石棕',
\        'pinyin': 'yanshizong'
\    },
\    '#96c24e': {
\        'hex': '#96c24e',
\        'name': '芽绿',
\        'pinyin': 'yalv'
\    },
\    '#97846c': {
\        'hex': '#97846c',
\        'name': '猴毛灰',
\        'pinyin': 'houmaohui'
\    },
\    '#983680': {
\        'hex': '#983680',
\        'name': '芥花紫',
\        'pinyin': 'jiehuazi'
\    },
\    '#986524': {
\        'hex': '#986524',
\        'name': '山鸡褐',
\        'pinyin': 'shanjihe'
\    },
\    '#9a8878': {
\        'hex': '#9a8878',
\        'name': '海鸥灰',
\        'pinyin': 'haiouhui'
\    },
\    '#9abeaf': {
\        'hex': '#9abeaf',
\        'name': '草原远绿',
\        'pinyin': 'caoyuanyuanlv'
\    },
\    '#9b1e64': {
\        'hex': '#9b1e64',
\        'name': '苋菜紫',
\        'pinyin': 'xiancaizi'
\    },
\    '#9eccab': {
\        'hex': '#9eccab',
\        'name': '明绿',
\        'pinyin': 'minglv'
\    },
\    '#9fa39a': {
\        'hex': '#9fa39a',
\        'name': '镍灰',
\        'pinyin': 'niehui'
\    },
\    '#a35c8f': {
\        'hex': '#a35c8f',
\        'name': '扁豆紫',
\        'pinyin': 'biandouzi'
\    },
\    '#a4aca7': {
\        'hex': '#a4aca7',
\        'name': '冰山蓝',
\        'pinyin': 'bingshanlan'
\    },
\    '#a4cab6': {
\        'hex': '#a4cab6',
\        'name': '玉簪绿',
\        'pinyin': 'yuzanlv'
\    },
\    '#a61b29': {
\        'hex': '#a61b29',
\        'name': '苋菜红',
\        'pinyin': 'xiancaihong'
\    },
\    '#a6522c': {
\        'hex': '#a6522c',
\        'name': '绀红',
\        'pinyin': 'ganhong'
\    },
\    '#a7535a': {
\        'hex': '#a7535a',
\        'name': '满江红',
\        'pinyin': 'manjianghong'
\    },
\    '#a7a8bd': {
\        'hex': '#a7a8bd',
\        'name': '淡蓝紫',
\        'pinyin': 'danlanzi'
\    },
\    '#a8456b': {
\        'hex': '#a8456b',
\        'name': '洋葱紫',
\        'pinyin': 'yangcongzi'
\    },
\    '#aa6a4c': {
\        'hex': '#aa6a4c',
\        'name': '火泥棕',
\        'pinyin': 'huonizong'
\    },
\    '#ab372f': {
\        'hex': '#ab372f',
\        'name': '鹅血石红',
\        'pinyin': 'exueshihong'
\    },
\    '#ac1f18': {
\        'hex': '#ac1f18',
\        'name': '覆盆子红',
\        'pinyin': 'fupenzihong'
\    },
\    '#ad6598': {
\        'hex': '#ad6598',
\        'name': '豆蔻紫',
\        'pinyin': 'doukouzi'
\    },
\    '#ad9e5f': {
\        'hex': '#ad9e5f',
\        'name': '淡灰绿',
\        'pinyin': 'danhuilv'
\    },
\    '#add5a2': {
\        'hex': '#add5a2',
\        'name': '嘉陵水绿',
\        'pinyin': 'jialingshuilv'
\    },
\    '#b0d5df': {
\        'hex': '#b0d5df',
\        'name': '湖水蓝',
\        'pinyin': 'hushuilan'
\    },
\    '#b14b28': {
\        'hex': '#b14b28',
\        'name': '蟹蝥红',
\        'pinyin': 'xiemaohong'
\    },
\    '#b2bbbe': {
\        'hex': '#b2bbbe',
\        'name': '星灰',
\        'pinyin': 'xinghui'
\    },
\    '#b2cf87': {
\        'hex': '#b2cf87',
\        'name': '橄榄石绿',
\        'pinyin': 'ganlanshilv'
\    },
\    '#b4a992': {
\        'hex': '#b4a992',
\        'name': '百灵鸟灰',
\        'pinyin': 'bailingniaohui'
\    },
\    '#b598a1': {
\        'hex': '#b598a1',
\        'name': '隐红灰',
\        'pinyin': 'yinhonghui'
\    },
\    '#b5aa90': {
\        'hex': '#b5aa90',
\        'name': '银鼠灰',
\        'pinyin': 'yinshuhui'
\    },
\    '#b6a476': {
\        'hex': '#b6a476',
\        'name': '尘灰',
\        'pinyin': 'chenhui'
\    },
\    '#b7511d': {
\        'hex': '#b7511d',
\        'name': '淡可可棕',
\        'pinyin': 'dankekezong'
\    },
\    '#b78b26': {
\        'hex': '#b78b26',
\        'name': '山鸡黄',
\        'pinyin': 'shanjihuang'
\    },
\    '#b78d12': {
\        'hex': '#b78d12',
\        'name': '枯绿',
\        'pinyin': 'kulv'
\    },
\    '#b7a091': {
\        'hex': '#b7a091',
\        'name': '蛛网灰',
\        'pinyin': 'zhuwanghui'
\    },
\    '#b7ae8f': {
\        'hex': '#b7ae8f',
\        'name': '月灰',
\        'pinyin': 'yuehui'
\    },
\    '#b7d07a': {
\        'hex': '#b7d07a',
\        'name': '芦苇绿',
\        'pinyin': 'luweilv'
\    },
\    '#b89485': {
\        'hex': '#b89485',
\        'name': '淡玫瑰灰',
\        'pinyin': 'danmeiguihui'
\    },
\    '#b9dec9': {
\        'hex': '#b9dec9',
\        'name': '竹篁绿',
\        'pinyin': 'zhuhuanglv'
\    },
\    '#ba2f7b': {
\        'hex': '#ba2f7b',
\        'name': '玫瑰紫',
\        'pinyin': 'meiguizi'
\    },
\    '#baccd9': {
\        'hex': '#baccd9',
\        'name': '云水蓝',
\        'pinyin': 'yunshuilan'
\    },
\    '#bacf65': {
\        'hex': '#bacf65',
\        'name': '苹果绿',
\        'pinyin': 'pingguolv'
\    },
\    '#bbb5ac': {
\        'hex': '#bbb5ac',
\        'name': '中灰',
\        'pinyin': 'zhonghui'
\    },
\    '#bc84a8': {
\        'hex': '#bc84a8',
\        'name': '青蛤壳紫',
\        'pinyin': 'qinghakezi'
\    },
\    '#bdaead': {
\        'hex': '#bdaead',
\        'name': '芦穗灰',
\        'pinyin': 'lusuihui'
\    },
\    '#be7e4a': {
\        'hex': '#be7e4a',
\        'name': '淡赭',
\        'pinyin': 'danzhe'
\    },
\    '#bec936': {
\        'hex': '#bec936',
\        'name': '橄榄黄绿',
\        'pinyin': 'ganlanhuanglv'
\    },
\    '#bf3553': {
\        'hex': '#bf3553',
\        'name': '锦葵红',
\        'pinyin': 'jinkuihong'
\    },
\    '#c02c38': {
\        'hex': '#c02c38',
\        'name': '高粱红',
\        'pinyin': 'gaolianghong'
\    },
\    '#c04851': {
\        'hex': '#c04851',
\        'name': '玉红',
\        'pinyin': 'yuhong'
\    },
\    '#c06f98': {
\        'hex': '#c06f98',
\        'name': '樱草紫',
\        'pinyin': 'yingcaozi'
\    },
\    '#c08eaf': {
\        'hex': '#c08eaf',
\        'name': '萝兰紫',
\        'pinyin': 'luolanzi'
\    },
\    '#c09351': {
\        'hex': '#c09351',
\        'name': '桂皮淡棕',
\        'pinyin': 'guipidanzong'
\    },
\    '#c0c4c3': {
\        'hex': '#c0c4c3',
\        'name': '月影白',
\        'pinyin': 'yueyingbai'
\    },
\    '#c1651a': {
\        'hex': '#c1651a',
\        'name': '槟榔综',
\        'pinyin': 'binglangzong'
\    },
\    '#c1b2a3': {
\        'hex': '#c1b2a3',
\        'name': '淡银灰',
\        'pinyin': 'danyinhui'
\    },
\    '#c21f30': {
\        'hex': '#c21f30',
\        'name': '枫叶红',
\        'pinyin': 'fengyehong'
\    },
\    '#c27c88': {
\        'hex': '#c27c88',
\        'name': '山黎豆红',
\        'pinyin': 'shanlidouhong'
\    },
\    '#c35691': {
\        'hex': '#c35691',
\        'name': '电气石红',
\        'pinyin': 'dianqishihong'
\    },
\    '#c3d7df': {
\        'hex': '#c3d7df',
\        'name': '井天蓝',
\        'pinyin': 'jingtianlan'
\    },
\    '#c45a65': {
\        'hex': '#c45a65',
\        'name': '莓红',
\        'pinyin': 'meihong'
\    },
\    '#c4cbcf': {
\        'hex': '#c4cbcf',
\        'name': '大理石灰',
\        'pinyin': 'dalishihui'
\    },
\    '#c4d7d6': {
\        'hex': '#c4d7d6',
\        'name': '穹灰',
\        'pinyin': 'qionghui'
\    },
\    '#c5708b': {
\        'hex': '#c5708b',
\        'name': '酢酱草红',
\        'pinyin': 'cujiangcaohong'
\    },
\    '#c6dfc8': {
\        'hex': '#c6dfc8',
\        'name': '淡翠绿',
\        'pinyin': 'dancuilv'
\    },
\    '#c6e6e8': {
\        'hex': '#c6e6e8',
\        'name': '海天蓝',
\        'pinyin': 'haitianlan'
\    },
\    '#c7d2d4': {
\        'hex': '#c7d2d4',
\        'name': '鸥蓝',
\        'pinyin': 'oulan'
\    },
\    '#c8adc4': {
\        'hex': '#c8adc4',
\        'name': '凤信紫',
\        'pinyin': 'fengxinzi'
\    },
\    '#cad3c3': {
\        'hex': '#cad3c3',
\        'name': '艾绿',
\        'pinyin': 'ailv'
\    },
\    '#cc163a': {
\        'hex': '#cc163a',
\        'name': '尖晶玉红',
\        'pinyin': 'jianjingyuhong'
\    },
\    '#cc5595': {
\        'hex': '#cc5595',
\        'name': '龙须红',
\        'pinyin': 'longxuhong'
\    },
\    '#ccccd6': {
\        'hex': '#ccccd6',
\        'name': '远山紫',
\        'pinyin': 'yuanshanzi'
\    },
\    '#cd6227': {
\        'hex': '#cd6227',
\        'name': '火砖红',
\        'pinyin': 'huozhuanhong'
\    },
\    '#cdd1d3': {
\        'hex': '#cdd1d3',
\        'name': '银鱼白',
\        'pinyin': 'yinyubai'
\    },
\    '#ce5777': {
\        'hex': '#ce5777',
\        'name': '月季红',
\        'pinyin': 'yuejihong'
\    },
\    '#ce5e8a': {
\        'hex': '#ce5e8a',
\        'name': '吊钟花红',
\        'pinyin': 'diaozhonghuahong'
\    },
\    '#cf4813': {
\        'hex': '#cf4813',
\        'name': '落霞红',
\        'pinyin': 'luoxiahong'
\    },
\    '#cf7543': {
\        'hex': '#cf7543',
\        'name': '余烬红',
\        'pinyin': 'yujinhong'
\    },
\    '#cfccc9': {
\        'hex': '#cfccc9',
\        'name': '玛瑙灰',
\        'pinyin': 'manaohui'
\    },
\    '#d0deaa': {
\        'hex': '#d0deaa',
\        'name': '姚黄',
\        'pinyin': 'yaohuang'
\    },
\    '#d0dfe6': {
\        'hex': '#d0dfe6',
\        'name': '远天蓝',
\        'pinyin': 'yuantianlan'
\    },
\    '#d11a2d': {
\        'hex': '#d11a2d',
\        'name': '鹅冠红',
\        'pinyin': 'eguanhong'
\    },
\    '#d13c74': {
\        'hex': '#d13c74',
\        'name': '菠根红',
\        'pinyin': 'bogenhong'
\    },
\    '#d1c2d3': {
\        'hex': '#d1c2d3',
\        'name': '淡牵牛紫',
\        'pinyin': 'danqianniuzi'
\    },
\    '#d2357d': {
\        'hex': '#d2357d',
\        'name': '玫瑰红',
\        'pinyin': 'meiguihong'
\    },
\    '#d2568c': {
\        'hex': '#d2568c',
\        'name': '丹紫红',
\        'pinyin': 'danzihong'
\    },
\    '#d276a3': {
\        'hex': '#d276a3',
\        'name': '菱锰红',
\        'pinyin': 'lingmenghong'
\    },
\    '#d2b116': {
\        'hex': '#d2b116',
\        'name': '新禾绿',
\        'pinyin': 'xinhelv'
\    },
\    '#d2b42c': {
\        'hex': '#d2b42c',
\        'name': '草黄',
\        'pinyin': 'caohuang'
\    },
\    '#d2d97a': {
\        'hex': '#d2d97a',
\        'name': '槐花黄绿',
\        'pinyin': 'huaihuahuanglv'
\    },
\    '#d42517': {
\        'hex': '#d42517',
\        'name': '鹤顶红',
\        'pinyin': 'hedinghong'
\    },
\    '#d4c4b7': {
\        'hex': '#d4c4b7',
\        'name': '晓灰',
\        'pinyin': 'xiaohui'
\    },
\    '#d6a01d': {
\        'hex': '#d6a01d',
\        'name': '土黄',
\        'pinyin': 'tuhuang'
\    },
\    '#d85916': {
\        'hex': '#d85916',
\        'name': '铁棕',
\        'pinyin': 'tiezong'
\    },
\    '#d8e3e7': {
\        'hex': '#d8e3e7',
\        'name': '云峰白',
\        'pinyin': 'yunfengbai'
\    },
\    '#d99156': {
\        'hex': '#d99156',
\        'name': '鹿皮褐',
\        'pinyin': 'lupihe'
\    },
\    '#d9a40e': {
\        'hex': '#d9a40e',
\        'name': '芥黄',
\        'pinyin': 'jiehuang'
\    },
\    '#daa45a': {
\        'hex': '#daa45a',
\        'name': '玳瑁黄',
\        'pinyin': 'daimaohuang'
\    },
\    '#dad4cb': {
\        'hex': '#dad4cb',
\        'name': '浅灰',
\        'pinyin': 'qianhui'
\    },
\    '#db8540': {
\        'hex': '#db8540',
\        'name': '醉瓜肉',
\        'pinyin': 'zuiguarou'
\    },
\    '#dc9123': {
\        'hex': '#dc9123',
\        'name': '风帆黄',
\        'pinyin': 'fengfanhuang'
\    },
\    '#ddc871': {
\        'hex': '#ddc871',
\        'name': '芒果黄',
\        'pinyin': 'mangguohuang'
\    },
\    '#de1c31': {
\        'hex': '#de1c31',
\        'name': '唐菖蒲红',
\        'pinyin': 'tangchangpuhong'
\    },
\    '#de2a18': {
\        'hex': '#de2a18',
\        'name': '夕阳红',
\        'pinyin': 'xiyanghong'
\    },
\    '#de3f7c': {
\        'hex': '#de3f7c',
\        'name': '嫩菱红',
\        'pinyin': 'nenlinghong'
\    },
\    '#de7622': {
\        'hex': '#de7622',
\        'name': '麂棕',
\        'pinyin': 'jizong'
\    },
\    '#de7897': {
\        'hex': '#de7897',
\        'name': '白芨红',
\        'pinyin': 'baijihong'
\    },
\    '#de9e44': {
\        'hex': '#de9e44',
\        'name': '软木黄',
\        'pinyin': 'ruanmuhuang'
\    },
\    '#dfc243': {
\        'hex': '#dfc243',
\        'name': '蒿黄',
\        'pinyin': 'haohuang'
\    },
\    '#dfecd5': {
\        'hex': '#dfecd5',
\        'name': '艾背绿',
\        'pinyin': 'aibeilv'
\    },
\    '#e0c8d1': {
\        'hex': '#e0c8d1',
\        'name': '淡青紫',
\        'pinyin': 'danqingzi'
\    },
\    '#e16723': {
\        'hex': '#e16723',
\        'name': '陶瓷红',
\        'pinyin': 'taocihong'
\    },
\    '#e16c96': {
\        'hex': '#e16c96',
\        'name': '初荷红',
\        'pinyin': 'chuhehong'
\    },
\    '#e2c027': {
\        'hex': '#e2c027',
\        'name': '姜黄',
\        'pinyin': 'jianghuang'
\    },
\    '#e2c17c': {
\        'hex': '#e2c17c',
\        'name': '浅驼色',
\        'pinyin': 'qiantuose'
\    },
\    '#e2d849': {
\        'hex': '#e2d849',
\        'name': '蝶黄',
\        'pinyin': 'diehuang'
\    },
\    '#e2e1e4': {
\        'hex': '#e2e1e4',
\        'name': '芡食白',
\        'pinyin': 'qianshibai'
\    },
\    '#e2e7bf': {
\        'hex': '#e2e7bf',
\        'name': '海沬绿',
\        'pinyin': 'haimeilv'
\    },
\    '#e3b4b8': {
\        'hex': '#e3b4b8',
\        'name': '鼠鼻红',
\        'pinyin': 'shubihong'
\    },
\    '#e3bd8d': {
\        'hex': '#e3bd8d',
\        'name': '鹿角棕',
\        'pinyin': 'lujiaozong'
\    },
\    '#e46828': {
\        'hex': '#e46828',
\        'name': '金驼',
\        'pinyin': 'jintuo'
\    },
\    '#e4bf11': {
\        'hex': '#e4bf11',
\        'name': '香蕉黄',
\        'pinyin': 'xiangjiaohuang'
\    },
\    '#e4dfd7': {
\        'hex': '#e4dfd7',
\        'name': '珍珠灰',
\        'pinyin': 'zhenzhuhui'
\    },
\    '#e5b751': {
\        'hex': '#e5b751',
\        'name': '沙石黄',
\        'pinyin': 'shashihuang'
\    },
\    '#e5d3aa': {
\        'hex': '#e5d3aa',
\        'name': '莲子白',
\        'pinyin': 'lianzibai'
\    },
\    '#e6d2d5': {
\        'hex': '#e6d2d5',
\        'name': '蓟粉红',
\        'pinyin': 'jifenhong'
\    },
\    '#e77c8e': {
\        'hex': '#e77c8e',
\        'name': '淡茜红',
\        'pinyin': 'danqianhong'
\    },
\    '#e7a23f': {
\        'hex': '#e7a23f',
\        'name': '凋叶棕',
\        'pinyin': 'diaoyezong'
\    },
\    '#e8b004': {
\        'hex': '#e8b004',
\        'name': '谷黄',
\        'pinyin': 'guhuang'
\    },
\    '#e8b49a': {
\        'hex': '#e8b49a',
\        'name': '玉粉红',
\        'pinyin': 'yufenhong'
\    },
\    '#e9ccd3': {
\        'hex': '#e9ccd3',
\        'name': '芝兰紫',
\        'pinyin': 'zhilanzi'
\    },
\    '#e9d7df': {
\        'hex': '#e9d7df',
\        'name': '丁香淡紫',
\        'pinyin': 'dingxiangdanzi'
\    },
\    '#e9ddb6': {
\        'hex': '#e9ddb6',
\        'name': '菊蕾白',
\        'pinyin': 'juleibai'
\    },
\    '#ea517f': {
\        'hex': '#ea517f',
\        'name': '莲瓣红',
\        'pinyin': 'lianbanhong'
\    },
\    '#ea7293': {
\        'hex': '#ea7293',
\        'name': '凤仙花红',
\        'pinyin': 'fengxianhuahong'
\    },
\    '#ea8958': {
\        'hex': '#ea8958',
\        'name': '晨曦红',
\        'pinyin': 'chenxihong'
\    },
\    '#eaad1a': {
\        'hex': '#eaad1a',
\        'name': '虎皮黄',
\        'pinyin': 'hupihuang'
\    },
\    '#eb261a': {
\        'hex': '#eb261a',
\        'name': '丽春红',
\        'pinyin': 'lichunhong'
\    },
\    '#eb3c70': {
\        'hex': '#eb3c70',
\        'name': '松叶牡丹红',
\        'pinyin': 'songyemudanhong'
\    },
\    '#eb507e': {
\        'hex': '#eb507e',
\        'name': '夹竹桃红',
\        'pinyin': 'jiazhutaohong'
\    },
\    '#eba0b3': {
\        'hex': '#eba0b3',
\        'name': '芍药耕红',
\        'pinyin': 'shaoyaogenghong'
\    },
\    '#ebb10d': {
\        'hex': '#ebb10d',
\        'name': '栀子黄',
\        'pinyin': 'zhizihuang'
\    },
\    '#ec2b24': {
\        'hex': '#ec2b24',
\        'name': '秋海棠红',
\        'pinyin': 'qiuhaitanghong'
\    },
\    '#ec2c64': {
\        'hex': '#ec2c64',
\        'name': '喜蛋红',
\        'pinyin': 'xidanhong'
\    },
\    '#ec2d7a': {
\        'hex': '#ec2d7a',
\        'name': '藏花红',
\        'pinyin': 'canghuahong'
\    },
\    '#ec4e8a': {
\        'hex': '#ec4e8a',
\        'name': '兔眼红',
\        'pinyin': 'tuyanhong'
\    },
\    '#ec7696': {
\        'hex': '#ec7696',
\        'name': '淡绛红',
\        'pinyin': 'danjianghong'
\    },
\    '#ec8aa4': {
\        'hex': '#ec8aa4',
\        'name': '报春红',
\        'pinyin': 'baochunhong'
\    },
\    '#ec9bad': {
\        'hex': '#ec9bad',
\        'name': '粉团花红',
\        'pinyin': 'fentuanhuahong'
\    },
\    '#ed2f6a': {
\        'hex': '#ed2f6a',
\        'name': '榲桲红',
\        'pinyin': 'wenpohong'
\    },
\    '#ed3321': {
\        'hex': '#ed3321',
\        'name': '樱桃红',
\        'pinyin': 'yingtaohong'
\    },
\    '#ed3333': {
\        'hex': '#ed3333',
\        'name': '枸枢红',
\        'pinyin': 'goushuhong'
\    },
\    '#ed3b2f': {
\        'hex': '#ed3b2f',
\        'name': '鱼鳃红',
\        'pinyin': 'yusaihong'
\    },
\    '#ed4845': {
\        'hex': '#ed4845',
\        'name': '淡菽红',
\        'pinyin': 'danshuhong'
\    },
\    '#ed5126': {
\        'hex': '#ed5126',
\        'name': '朱红',
\        'pinyin': 'zhuhong'
\    },
\    '#ed556a': {
\        'hex': '#ed556a',
\        'name': '山茶红',
\        'pinyin': 'shanchahong'
\    },
\    '#ed5a65': {
\        'hex': '#ed5a65',
\        'name': '艳红',
\        'pinyin': 'yanhong'
\    },
\    '#ed9db2': {
\        'hex': '#ed9db2',
\        'name': '豇豆红',
\        'pinyin': 'jiangdouhong'
\    },
\    '#edc3ae': {
\        'hex': '#edc3ae',
\        'name': '藕荷',
\        'pinyin': 'ouhe'
\    },
\    '#ede3e7': {
\        'hex': '#ede3e7',
\        'name': '马鞭草紫',
\        'pinyin': 'mabiancaozi'
\    },
\    '#ee2746': {
\        'hex': '#ee2746',
\        'name': '淡曙红',
\        'pinyin': 'danshuhong'
\    },
\    '#ee2c79': {
\        'hex': '#ee2c79',
\        'name': '紫荆红',
\        'pinyin': 'zijinghong'
\    },
\    '#ee3f4d': {
\        'hex': '#ee3f4d',
\        'name': '茶花红',
\        'pinyin': 'chahuahong'
\    },
\    '#ee4863': {
\        'hex': '#ee4863',
\        'name': '石竹红',
\        'pinyin': 'shizhuhong'
\    },
\    '#ee4866': {
\        'hex': '#ee4866',
\        'name': '淡蕊香红',
\        'pinyin': 'danruixianghong'
\    },
\    '#ee8055': {
\        'hex': '#ee8055',
\        'name': '法螺红',
\        'pinyin': 'faluohong'
\    },
\    '#eea08c': {
\        'hex': '#eea08c',
\        'name': '淡罂粟红',
\        'pinyin': 'danyingsuhong'
\    },
\    '#eea2a4': {
\        'hex': '#eea2a4',
\        'name': '牡丹粉红',
\        'pinyin': 'mudanfenhong'
\    },
\    '#eea6b7': {
\        'hex': '#eea6b7',
\        'name': '晶红',
\        'pinyin': 'jinghong'
\    },
\    '#eeaa9c': {
\        'hex': '#eeaa9c',
\        'name': '颊红',
\        'pinyin': 'jiahong'
\    },
\    '#eeb8c3': {
\        'hex': '#eeb8c3',
\        'name': '姜红',
\        'pinyin': 'jianghong'
\    },
\    '#eed045': {
\        'hex': '#eed045',
\        'name': '秋葵黄',
\        'pinyin': 'qiukuihuang'
\    },
\    '#eef7f2': {
\        'hex': '#eef7f2',
\        'name': '月白',
\        'pinyin': 'yuebai'
\    },
\    '#ef3473': {
\        'hex': '#ef3473',
\        'name': '品红',
\        'pinyin': 'pinhong'
\    },
\    '#ef475d': {
\        'hex': '#ef475d',
\        'name': '草茉莉红',
\        'pinyin': 'caomolihong'
\    },
\    '#ef498b': {
\        'hex': '#ef498b',
\        'name': '扁豆花红',
\        'pinyin': 'biandouhuahong'
\    },
\    '#ef632b': {
\        'hex': '#ef632b',
\        'name': '龙睛鱼红',
\        'pinyin': 'longjingyuhong'
\    },
\    '#ef6f48': {
\        'hex': '#ef6f48',
\        'name': '草莓红',
\        'pinyin': 'caomeihong'
\    },
\    '#ef82a0': {
\        'hex': '#ef82a0',
\        'name': '霞光红',
\        'pinyin': 'xiaguanghong'
\    },
\    '#efafad': {
\        'hex': '#efafad',
\        'name': '无花果红',
\        'pinyin': 'wuhuaguohong'
\    },
\    '#f03752': {
\        'hex': '#f03752',
\        'name': '海棠红',
\        'pinyin': 'haitanghong'
\    },
\    '#f03f24': {
\        'hex': '#f03f24',
\        'name': '胭脂红',
\        'pinyin': 'yanzhihong'
\    },
\    '#f04a3a': {
\        'hex': '#f04a3a',
\        'name': '珊瑚红',
\        'pinyin': 'shanhuhong'
\    },
\    '#f04b22': {
\        'hex': '#f04b22',
\        'name': '大红',
\        'pinyin': 'dahong'
\    },
\    '#f05a46': {
\        'hex': '#f05a46',
\        'name': '曲红',
\        'pinyin': 'quhong'
\    },
\    '#f07c82': {
\        'hex': '#f07c82',
\        'name': '香叶红',
\        'pinyin': 'xiangyehong'
\    },
\    '#f0945d': {
\        'hex': '#f0945d',
\        'name': '海螺橙',
\        'pinyin': 'hailuocheng'
\    },
\    '#f09c5a': {
\        'hex': '#f09c5a',
\        'name': '鲑鱼红',
\        'pinyin': 'guiyuhong'
\    },
\    '#f0a1a8': {
\        'hex': '#f0a1a8',
\        'name': '合欢红',
\        'pinyin': 'hehuanhong'
\    },
\    '#f0ada0': {
\        'hex': '#f0ada0',
\        'name': '桃红',
\        'pinyin': 'taohong'
\    },
\    '#f0c9cf': {
\        'hex': '#f0c9cf',
\        'name': '石蕊红',
\        'pinyin': 'shiruihong'
\    },
\    '#f0d695': {
\        'hex': '#f0d695',
\        'name': '象牙黄',
\        'pinyin': 'xiangyahuang'
\    },
\    '#f0f5e5': {
\        'hex': '#f0f5e5',
\        'name': '嫩菊绿',
\        'pinyin': 'nenjulv'
\    },
\    '#f13c22': {
\        'hex': '#f13c22',
\        'name': '萝卜红',
\        'pinyin': 'luobohong'
\    },
\    '#f1441d': {
\        'hex': '#f1441d',
\        'name': '蜻蜓红',
\        'pinyin': 'qingtinghong'
\    },
\    '#f15642': {
\        'hex': '#f15642',
\        'name': '苹果红',
\        'pinyin': 'pingguohong'
\    },
\    '#f17666': {
\        'hex': '#f17666',
\        'name': '谷鞘红',
\        'pinyin': 'guqiaohong'
\    },
\    '#f1908c': {
\        'hex': '#f1908c',
\        'name': '榴子红',
\        'pinyin': 'liuzihong'
\    },
\    '#f1939c': {
\        'hex': '#f1939c',
\        'name': '春梅红',
\        'pinyin': 'chunmeihong'
\    },
\    '#f19790': {
\        'hex': '#f19790',
\        'name': '舌红',
\        'pinyin': 'shehong'
\    },
\    '#f1c4cd': {
\        'hex': '#f1c4cd',
\        'name': '水红',
\        'pinyin': 'shuihong'
\    },
\    '#f1ca17': {
\        'hex': '#f1ca17',
\        'name': '柚黄',
\        'pinyin': 'youhuang'
\    },
\    '#f1f0ed': {
\        'hex': '#f1f0ed',
\        'name': '银白',
\        'pinyin': 'yinbai'
\    },
\    '#f23e23': {
\        'hex': '#f23e23',
\        'name': '红汞红',
\        'pinyin': 'honggonghong'
\    },
\    '#f2481b': {
\        'hex': '#f2481b',
\        'name': '柿红',
\        'pinyin': 'shihong'
\    },
\    '#f25a47': {
\        'hex': '#f25a47',
\        'name': '桂红',
\        'pinyin': 'guihong'
\    },
\    '#f26b1f': {
\        'hex': '#f26b1f',
\        'name': '金黄',
\        'pinyin': 'jinhuang'
\    },
\    '#f27635': {
\        'hex': '#f27635',
\        'name': '蟹壳红',
\        'pinyin': 'xiekehong'
\    },
\    '#f28e16': {
\        'hex': '#f28e16',
\        'name': '杏黄',
\        'pinyin': 'xinghuang'
\    },
\    '#f2b9b2': {
\        'hex': '#f2b9b2',
\        'name': '粉红',
\        'pinyin': 'fenhong'
\    },
\    '#f2cac9': {
\        'hex': '#f2cac9',
\        'name': '淡绯',
\        'pinyin': 'danfei'
\    },
\    '#f2ce2b': {
\        'hex': '#f2ce2b',
\        'name': '硫华黄',
\        'pinyin': 'liuhuahuang'
\    },
\    '#f2e6ce': {
\        'hex': '#f2e6ce',
\        'name': '荔肉白',
\        'pinyin': 'liroubai'
\    },
\    '#f2e7e5': {
\        'hex': '#f2e7e5',
\        'name': '淡藤萝紫',
\        'pinyin': 'dantengluozi'
\    },
\    '#f33b1f': {
\        'hex': '#f33b1f',
\        'name': '极光红',
\        'pinyin': 'jiguanghong'
\    },
\    '#f34718': {
\        'hex': '#f34718',
\        'name': '榴花红',
\        'pinyin': 'liuhuahong'
\    },
\    '#f3bf4c': {
\        'hex': '#f3bf4c',
\        'name': '甘草黄',
\        'pinyin': 'gancaohuang'
\    },
\    '#f43e06': {
\        'hex': '#f43e06',
\        'name': '银朱',
\        'pinyin': 'yinzhu'
\    },
\    '#f4a83a': {
\        'hex': '#f4a83a',
\        'name': '金莺黄',
\        'pinyin': 'jinyinghuang'
\    },
\    '#f4c7ba': {
\        'hex': '#f4c7ba',
\        'name': '洋水仙红',
\        'pinyin': 'yangshuixianhong'
\    },
\    '#f4ce69': {
\        'hex': '#f4ce69',
\        'name': '炒米黄',
\        'pinyin': 'chaomihuang'
\    },
\    '#f5391c': {
\        'hex': '#f5391c',
\        'name': '铁水红',
\        'pinyin': 'tieshuihong'
\    },
\    '#f68c60': {
\        'hex': '#f68c60',
\        'name': '瓜瓤红',
\        'pinyin': 'guaranghong'
\    },
\    '#f6ad8f': {
\        'hex': '#f6ad8f',
\        'name': '淡藏花红',
\        'pinyin': 'dancanghuahong'
\    },
\    '#f6c430': {
\        'hex': '#f6c430',
\        'name': '鹦鹉冠黄',
\        'pinyin': 'yingwuguanhuang'
\    },
\    '#f6cec1': {
\        'hex': '#f6cec1',
\        'name': '淡桃红',
\        'pinyin': 'dantaohong'
\    },
\    '#f6dcce': {
\        'hex': '#f6dcce',
\        'name': '初桃粉红',
\        'pinyin': 'chutaofenhong'
\    },
\    '#f6dead': {
\        'hex': '#f6dead',
\        'name': '酪黄',
\        'pinyin': 'laohuang'
\    },
\    '#f7c173': {
\        'hex': '#f7c173',
\        'name': '肉色',
\        'pinyin': 'rouse'
\    },
\    '#f7cdbc': {
\        'hex': '#f7cdbc',
\        'name': '润红',
\        'pinyin': 'runhong'
\    },
\    '#f7cfba': {
\        'hex': '#f7cfba',
\        'name': '介壳淡粉红',
\        'pinyin': 'jieqiaodanfenhong'
\    },
\    '#f7da94': {
\        'hex': '#f7da94',
\        'name': '香水玫瑰黄',
\        'pinyin': 'xiangshuimeiguihuang'
\    },
\    '#f7de98': {
\        'hex': '#f7de98',
\        'name': '篾黄',
\        'pinyin': 'miehuang'
\    },
\    '#f7e8aa': {
\        'hex': '#f7e8aa',
\        'name': '杏仁黄',
\        'pinyin': 'xingrenhuang'
\    },
\    '#f7f4ed': {
\        'hex': '#f7f4ed',
\        'name': '鱼肚白',
\        'pinyin': 'yudubai'
\    },
\    '#f86b1d': {
\        'hex': '#f86b1d',
\        'name': '金莲花橙',
\        'pinyin': 'jinlianhuacheng'
\    },
\    '#f8b37f': {
\        'hex': '#f8b37f',
\        'name': '玫瑰粉',
\        'pinyin': 'meiguifen'
\    },
\    '#f8bc31': {
\        'hex': '#f8bc31',
\        'name': '初熟杏黄',
\        'pinyin': 'chushuxinghuang'
\    },
\    '#f8c387': {
\        'hex': '#f8c387',
\        'name': '蛋壳黄',
\        'pinyin': 'dankehuang'
\    },
\    '#f8d86a': {
\        'hex': '#f8d86a',
\        'name': '葵扇黄',
\        'pinyin': 'kuishanhuang'
\    },
\    '#f8df70': {
\        'hex': '#f8df70',
\        'name': '麦秆黄',
\        'pinyin': 'maiganhuang'
\    },
\    '#f8df72': {
\        'hex': '#f8df72',
\        'name': '茉莉黄',
\        'pinyin': 'molihuang'
\    },
\    '#f8e0b0': {
\        'hex': '#f8e0b0',
\        'name': '淡肉色',
\        'pinyin': 'danrouse'
\    },
\    '#f8e8c1': {
\        'hex': '#f8e8c1',
\        'name': '豆汁黄',
\        'pinyin': 'douzhihuang'
\    },
\    '#f8ebe6': {
\        'hex': '#f8ebe6',
\        'name': '草珠红',
\        'pinyin': 'caozhuhong'
\    },
\    '#f8f4ed': {
\        'hex': '#f8f4ed',
\        'name': '汉白玉',
\        'pinyin': 'hanbaiyu'
\    },
\    '#f9723d': {
\        'hex': '#f9723d',
\        'name': '芙蓉红',
\        'pinyin': 'furonghong'
\    },
\    '#f97d1c': {
\        'hex': '#f97d1c',
\        'name': '橘橙',
\        'pinyin': 'jucheng'
\    },
\    '#f9a633': {
\        'hex': '#f9a633',
\        'name': '榴萼黄',
\        'pinyin': 'liuehuang'
\    },
\    '#f9bd10': {
\        'hex': '#f9bd10',
\        'name': '浅烙黄',
\        'pinyin': 'qianlaohuang'
\    },
\    '#f9c116': {
\        'hex': '#f9c116',
\        'name': '木瓜黄',
\        'pinyin': 'muguahuang'
\    },
\    '#f9cb8b': {
\        'hex': '#f9cb8b',
\        'name': '瓜瓤粉',
\        'pinyin': 'guarangfen'
\    },
\    '#f9d27d': {
\        'hex': '#f9d27d',
\        'name': '麦芽糖黄',
\        'pinyin': 'maiyatanghuang'
\    },
\    '#f9d367': {
\        'hex': '#f9d367',
\        'name': '淡密黄',
\        'pinyin': 'danmihuang'
\    },
\    '#f9d770': {
\        'hex': '#f9d770',
\        'name': '淡茧黄',
\        'pinyin': 'danjianhuang'
\    },
\    '#f9e8d0': {
\        'hex': '#f9e8d0',
\        'name': '落英淡粉',
\        'pinyin': 'luoyingdanfen'
\    },
\    '#f9e9cd': {
\        'hex': '#f9e9cd',
\        'name': '米色',
\        'pinyin': 'mise'
\    },
\    '#f9f1db': {
\        'hex': '#f9f1db',
\        'name': '蚌肉白',
\        'pinyin': 'bangroubai'
\    },
\    '#f9f4dc': {
\        'hex': '#f9f4dc',
\        'name': '乳白',
\        'pinyin': 'rubai'
\    },
\    '#fa5d19': {
\        'hex': '#fa5d19',
\        'name': '莓酱红',
\        'pinyin': 'meijianghong'
\    },
\    '#fa7e23': {
\        'hex': '#fa7e23',
\        'name': '美人焦橙',
\        'pinyin': 'meirenjiaocheng'
\    },
\    '#fb8b05': {
\        'hex': '#fb8b05',
\        'name': '万寿菊黄',
\        'pinyin': 'wanshoujuhuang'
\    },
\    '#fb9968': {
\        'hex': '#fb9968',
\        'name': '野蔷薇红',
\        'pinyin': 'yeqiangweihong'
\    },
\    '#fba414': {
\        'hex': '#fba414',
\        'name': '淡橘橙',
\        'pinyin': 'danjucheng'
\    },
\    '#fbb612': {
\        'hex': '#fbb612',
\        'name': '鸡蛋黄',
\        'pinyin': 'jidanhuang'
\    },
\    '#fbb929': {
\        'hex': '#fbb929',
\        'name': '鹅掌黄',
\        'pinyin': 'ezhanghuang'
\    },
\    '#fbb957': {
\        'hex': '#fbb957',
\        'name': '蜜黄',
\        'pinyin': 'mihuang'
\    },
\    '#fbc82f': {
\        'hex': '#fbc82f',
\        'name': '雅梨黄',
\        'pinyin': 'yalihuang'
\    },
\    '#fbcd31': {
\        'hex': '#fbcd31',
\        'name': '大豆黄',
\        'pinyin': 'dadouhuang'
\    },
\    '#fbda41': {
\        'hex': '#fbda41',
\        'name': '油菜花黄',
\        'pinyin': 'youcaihuahuang'
\    },
\    '#fbecde': {
\        'hex': '#fbecde',
\        'name': '荷花白',
\        'pinyin': 'hehuabai'
\    },
\    '#fbeee2': {
\        'hex': '#fbeee2',
\        'name': '淡米粉',
\        'pinyin': 'danmifen'
\    },
\    '#fbf2e3': {
\        'hex': '#fbf2e3',
\        'name': '粉白',
\        'pinyin': 'fenbai'
\    },
\    '#fc6315': {
\        'hex': '#fc6315',
\        'name': '燕颔红',
\        'pinyin': 'yanhanhong'
\    },
\    '#fc7930': {
\        'hex': '#fc7930',
\        'name': '菠萝红',
\        'pinyin': 'boluohong'
\    },
\    '#fc8c23': {
\        'hex': '#fc8c23',
\        'name': '北瓜黄',
\        'pinyin': 'beiguahuang'
\    },
\    '#fca104': {
\        'hex': '#fca104',
\        'name': '橙皮黄',
\        'pinyin': 'chengpihuang'
\    },
\    '#fca106': {
\        'hex': '#fca106',
\        'name': '枇杷黄',
\        'pinyin': 'pipahuang'
\    },
\    '#fcb70a': {
\        'hex': '#fcb70a',
\        'name': '鼬黄',
\        'pinyin': 'youhuang'
\    },
\    '#fcc307': {
\        'hex': '#fcc307',
\        'name': '金盏黄',
\        'pinyin': 'jinzhanhuang'
\    },
\    '#fcc515': {
\        'hex': '#fcc515',
\        'name': '黄连黄',
\        'pinyin': 'huanglianhuang'
\    },
\    '#fccb16': {
\        'hex': '#fccb16',
\        'name': '素馨黄',
\        'pinyin': 'suxinhuang'
\    },
\    '#fcd217': {
\        'hex': '#fcd217',
\        'name': '金瓜黄',
\        'pinyin': 'jinguahuang'
\    },
\    '#fcd337': {
\        'hex': '#fcd337',
\        'name': '柠檬黄',
\        'pinyin': 'ningmenghuang'
\    },
\    '#feba07': {
\        'hex': '#feba07',
\        'name': '琥珀黄',
\        'pinyin': 'hupohuang'
\    },
\    '#fecc11': {
\        'hex': '#fecc11',
\        'name': '向日葵黄',
\        'pinyin': 'xiangrikuihuang'
\    },
\    '#fed71a': {
\        'hex': '#fed71a',
\        'name': '佛手黄',
\        'pinyin': 'foshouhuang'
\    },
\    '#ff9900': {
\        'hex': '#ff9900',
\        'name': '雄黄',
\        'pinyin': 'xionghuang'
\    },
\    '#ffa60f': {
\        'hex': '#ffa60f',
\        'name': '金叶黄',
\        'pinyin': 'jinyehuang'
\    },
\    '#ffc90c': {
\        'hex': '#ffc90c',
\        'name': '乳鸭黄',
\        'pinyin': 'ruyahuang'
\    },
\    '#ffd111': {
\        'hex': '#ffd111',
\        'name': '藤黄',
\        'pinyin': 'tenghuang'
\    },
\    '#fffef8': {
\        'hex': '#fffef8',
\        'name': '象牙白',
\        'pinyin': 'xiangyabai'
\    },
\    '#fffef9': {
\        'hex': '#fffef9',
\        'name': '雪白',
\        'pinyin': 'xuebai'
\    },
\    '#fffefa': {
\        'hex': '#fffefa',
\        'name': '海参灰',
\        'pinyin': 'haishenhui'
\    }
\}


let g:color#name_map = {
\    '丁香棕': {
\        'hex': '#71361d',
\        'name': '丁香棕',
\        'pinyin': 'dingxiangzong'
\    },
\    '丁香淡紫': {
\        'hex': '#e9d7df',
\        'name': '丁香淡紫',
\        'pinyin': 'dingxiangdanzi'
\    },
\    '万寿菊黄': {
\        'hex': '#fb8b05',
\        'name': '万寿菊黄',
\        'pinyin': 'wanshoujuhuang'
\    },
\    '中灰': {
\        'hex': '#bbb5ac',
\        'name': '中灰',
\        'pinyin': 'zhonghui'
\    },
\    '中灰驼': {
\        'hex': '#603d30',
\        'name': '中灰驼',
\        'pinyin': 'zhonghuituo'
\    },
\    '中红灰': {
\        'hex': '#8b614d',
\        'name': '中红灰',
\        'pinyin': 'zhonghonghui'
\    },
\    '丹紫红': {
\        'hex': '#d2568c',
\        'name': '丹紫红',
\        'pinyin': 'danzihong'
\    },
\    '丽春红': {
\        'hex': '#eb261a',
\        'name': '丽春红',
\        'pinyin': 'lichunhong'
\    },
\    '乌梅紫': {
\        'hex': '#1e131d',
\        'name': '乌梅紫',
\        'pinyin': 'wumeizi'
\    },
\    '乳白': {
\        'hex': '#f9f4dc',
\        'name': '乳白',
\        'pinyin': 'rubai'
\    },
\    '乳鸭黄': {
\        'hex': '#ffc90c',
\        'name': '乳鸭黄',
\        'pinyin': 'ruyahuang'
\    },
\    '云山蓝': {
\        'hex': '#2f90b9',
\        'name': '云山蓝',
\        'pinyin': 'yunshanlan'
\    },
\    '云峰白': {
\        'hex': '#d8e3e7',
\        'name': '云峰白',
\        'pinyin': 'yunfengbai'
\    },
\    '云杉绿': {
\        'hex': '#15231b',
\        'name': '云杉绿',
\        'pinyin': 'yunshanlv'
\    },
\    '云水蓝': {
\        'hex': '#baccd9',
\        'name': '云水蓝',
\        'pinyin': 'yunshuilan'
\    },
\    '井天蓝': {
\        'hex': '#c3d7df',
\        'name': '井天蓝',
\        'pinyin': 'jingtianlan'
\    },
\    '亚丁绿': {
\        'hex': '#428675',
\        'name': '亚丁绿',
\        'pinyin': 'yadinglv'
\    },
\    '介壳淡粉红': {
\        'hex': '#f7cfba',
\        'name': '介壳淡粉红',
\        'pinyin': 'jieqiaodanfenhong'
\    },
\    '余烬红': {
\        'hex': '#cf7543',
\        'name': '余烬红',
\        'pinyin': 'yujinhong'
\    },
\    '佛手黄': {
\        'hex': '#fed71a',
\        'name': '佛手黄',
\        'pinyin': 'foshouhuang'
\    },
\    '兔眼红': {
\        'hex': '#ec4e8a',
\        'name': '兔眼红',
\        'pinyin': 'tuyanhong'
\    },
\    '冰山蓝': {
\        'hex': '#a4aca7',
\        'name': '冰山蓝',
\        'pinyin': 'bingshanlan'
\    },
\    '凋叶棕': {
\        'hex': '#e7a23f',
\        'name': '凋叶棕',
\        'pinyin': 'diaoyezong'
\    },
\    '凤仙花红': {
\        'hex': '#ea7293',
\        'name': '凤仙花红',
\        'pinyin': 'fengxianhuahong'
\    },
\    '凤信紫': {
\        'hex': '#c8adc4',
\        'name': '凤信紫',
\        'pinyin': 'fengxinzi'
\    },
\    '初桃粉红': {
\        'hex': '#f6dcce',
\        'name': '初桃粉红',
\        'pinyin': 'chutaofenhong'
\    },
\    '初熟杏黄': {
\        'hex': '#f8bc31',
\        'name': '初熟杏黄',
\        'pinyin': 'chushuxinghuang'
\    },
\    '初荷红': {
\        'hex': '#e16c96',
\        'name': '初荷红',
\        'pinyin': 'chuhehong'
\    },
\    '剑锋紫': {
\        'hex': '#3e3841',
\        'name': '剑锋紫',
\        'pinyin': 'jianfengzi'
\    },
\    '北瓜黄': {
\        'hex': '#fc8c23',
\        'name': '北瓜黄',
\        'pinyin': 'beiguahuang'
\    },
\    '卵石紫': {
\        'hex': '#30161c',
\        'name': '卵石紫',
\        'pinyin': 'luanshizi'
\    },
\    '古铜紫': {
\        'hex': '#440e25',
\        'name': '古铜紫',
\        'pinyin': 'gutongzi'
\    },
\    '古铜绿': {
\        'hex': '#533c1b',
\        'name': '古铜绿',
\        'pinyin': 'gutonglv'
\    },
\    '古铜褐': {
\        'hex': '#5c3719',
\        'name': '古铜褐',
\        'pinyin': 'gutonghe'
\    },
\    '古鼎灰': {
\        'hex': '#36292f',
\        'name': '古鼎灰',
\        'pinyin': 'gudinghui'
\    },
\    '可可棕': {
\        'hex': '#652b1c',
\        'name': '可可棕',
\        'pinyin': 'kekezong'
\    },
\    '合欢红': {
\        'hex': '#f0a1a8',
\        'name': '合欢红',
\        'pinyin': 'hehuanhong'
\    },
\    '吊钟花红': {
\        'hex': '#ce5e8a',
\        'name': '吊钟花红',
\        'pinyin': 'diaozhonghuahong'
\    },
\    '向日葵黄': {
\        'hex': '#fecc11',
\        'name': '向日葵黄',
\        'pinyin': 'xiangrikuihuang'
\    },
\    '咖啡': {
\        'hex': '#753117',
\        'name': '咖啡',
\        'pinyin': 'kafei'
\    },
\    '品红': {
\        'hex': '#ef3473',
\        'name': '品红',
\        'pinyin': 'pinhong'
\    },
\    '品蓝': {
\        'hex': '#2b73af',
\        'name': '品蓝',
\        'pinyin': 'pinlan'
\    },
\    '唐菖蒲红': {
\        'hex': '#de1c31',
\        'name': '唐菖蒲红',
\        'pinyin': 'tangchangpuhong'
\    },
\    '喜蛋红': {
\        'hex': '#ec2c64',
\        'name': '喜蛋红',
\        'pinyin': 'xidanhong'
\    },
\    '嘉陵水绿': {
\        'hex': '#add5a2',
\        'name': '嘉陵水绿',
\        'pinyin': 'jialingshuilv'
\    },
\    '土黄': {
\        'hex': '#d6a01d',
\        'name': '土黄',
\        'pinyin': 'tuhuang'
\    },
\    '垩灰': {
\        'hex': '#737c7b',
\        'name': '垩灰',
\        'pinyin': 'ehui'
\    },
\    '墨紫': {
\        'hex': '#310f1b',
\        'name': '墨紫',
\        'pinyin': 'mozi'
\    },
\    '夏云灰': {
\        'hex': '#617172',
\        'name': '夏云灰',
\        'pinyin': 'xiayunhui'
\    },
\    '夕阳红': {
\        'hex': '#de2a18',
\        'name': '夕阳红',
\        'pinyin': 'xiyanghong'
\    },
\    '夜灰': {
\        'hex': '#847c74',
\        'name': '夜灰',
\        'pinyin': 'yehui'
\    },
\    '大理石灰': {
\        'hex': '#c4cbcf',
\        'name': '大理石灰',
\        'pinyin': 'dalishihui'
\    },
\    '大红': {
\        'hex': '#f04b22',
\        'name': '大红',
\        'pinyin': 'dahong'
\    },
\    '大豆黄': {
\        'hex': '#fbcd31',
\        'name': '大豆黄',
\        'pinyin': 'dadouhuang'
\    },
\    '天蓝': {
\        'hex': '#1677b3',
\        'name': '天蓝',
\        'pinyin': 'tianlan'
\    },
\    '夹竹桃红': {
\        'hex': '#eb507e',
\        'name': '夹竹桃红',
\        'pinyin': 'jiazhutaohong'
\    },
\    '姚黄': {
\        'hex': '#d0deaa',
\        'name': '姚黄',
\        'pinyin': 'yaohuang'
\    },
\    '姜红': {
\        'hex': '#eeb8c3',
\        'name': '姜红',
\        'pinyin': 'jianghong'
\    },
\    '姜黄': {
\        'hex': '#e2c027',
\        'name': '姜黄',
\        'pinyin': 'jianghuang'
\    },
\    '嫩灰': {
\        'hex': '#74787a',
\        'name': '嫩灰',
\        'pinyin': 'nenhui'
\    },
\    '嫩菊绿': {
\        'hex': '#f0f5e5',
\        'name': '嫩菊绿',
\        'pinyin': 'nenjulv'
\    },
\    '嫩菱红': {
\        'hex': '#de3f7c',
\        'name': '嫩菱红',
\        'pinyin': 'nenlinghong'
\    },
\    '孔雀绿': {
\        'hex': '#229453',
\        'name': '孔雀绿',
\        'pinyin': 'kongquelv'
\    },
\    '孔雀蓝': {
\        'hex': '#0eb0c9',
\        'name': '孔雀蓝',
\        'pinyin': 'kongquelan'
\    },
\    '安安蓝': {
\        'hex': '#3170a7',
\        'name': '安安蓝',
\        'pinyin': 'ananlan'
\    },
\    '宝石绿': {
\        'hex': '#41ae3c',
\        'name': '宝石绿',
\        'pinyin': 'baoshilv'
\    },
\    '宝石蓝': {
\        'hex': '#2486b9',
\        'name': '宝石蓝',
\        'pinyin': 'baoshilan'
\    },
\    '宫殿绿': {
\        'hex': '#20894d',
\        'name': '宫殿绿',
\        'pinyin': 'gongdianlv'
\    },
\    '尖晶玉红': {
\        'hex': '#cc163a',
\        'name': '尖晶玉红',
\        'pinyin': 'jianjingyuhong'
\    },
\    '尘灰': {
\        'hex': '#b6a476',
\        'name': '尘灰',
\        'pinyin': 'chenhui'
\    },
\    '尼罗蓝': {
\        'hex': '#2474b5',
\        'name': '尼罗蓝',
\        'pinyin': 'niluolan'
\    },
\    '山梗紫': {
\        'hex': '#61649f',
\        'name': '山梗紫',
\        'pinyin': 'shangengzi'
\    },
\    '山茶红': {
\        'hex': '#ed556a',
\        'name': '山茶红',
\        'pinyin': 'shanchahong'
\    },
\    '山鸡褐': {
\        'hex': '#986524',
\        'name': '山鸡褐',
\        'pinyin': 'shanjihe'
\    },
\    '山鸡黄': {
\        'hex': '#b78b26',
\        'name': '山鸡黄',
\        'pinyin': 'shanjihuang'
\    },
\    '山黎豆红': {
\        'hex': '#c27c88',
\        'name': '山黎豆红',
\        'pinyin': 'shanlidouhong'
\    },
\    '岩石棕': {
\        'hex': '#964d22',
\        'name': '岩石棕',
\        'pinyin': 'yanshizong'
\    },
\    '战舰灰': {
\        'hex': '#495c69',
\        'name': '战舰灰',
\        'pinyin': 'zhanjianhui'
\    },
\    '扁豆紫': {
\        'hex': '#a35c8f',
\        'name': '扁豆紫',
\        'pinyin': 'biandouzi'
\    },
\    '扁豆花红': {
\        'hex': '#ef498b',
\        'name': '扁豆花红',
\        'pinyin': 'biandouhuahong'
\    },
\    '报春红': {
\        'hex': '#ec8aa4',
\        'name': '报春红',
\        'pinyin': 'baochunhong'
\    },
\    '搪磁蓝': {
\        'hex': '#11659a',
\        'name': '搪磁蓝',
\        'pinyin': 'tangcilan'
\    },
\    '斑鸠灰': {
\        'hex': '#482936',
\        'name': '斑鸠灰',
\        'pinyin': 'banjiuhui'
\    },
\    '新禾绿': {
\        'hex': '#d2b116',
\        'name': '新禾绿',
\        'pinyin': 'xinhelv'
\    },
\    '无花果红': {
\        'hex': '#efafad',
\        'name': '无花果红',
\        'pinyin': 'wuhuaguohong'
\    },
\    '明灰': {
\        'hex': '#8a988e',
\        'name': '明灰',
\        'pinyin': 'minghui'
\    },
\    '明绿': {
\        'hex': '#9eccab',
\        'name': '明绿',
\        'pinyin': 'minglv'
\    },
\    '星灰': {
\        'hex': '#b2bbbe',
\        'name': '星灰',
\        'pinyin': 'xinghui'
\    },
\    '星蓝': {
\        'hex': '#93b5cf',
\        'name': '星蓝',
\        'pinyin': 'xinglan'
\    },
\    '春梅红': {
\        'hex': '#f1939c',
\        'name': '春梅红',
\        'pinyin': 'chunmeihong'
\    },
\    '晓灰': {
\        'hex': '#d4c4b7',
\        'name': '晓灰',
\        'pinyin': 'xiaohui'
\    },
\    '晚波蓝': {
\        'hex': '#648e93',
\        'name': '晚波蓝',
\        'pinyin': 'wanbolan'
\    },
\    '晨曦红': {
\        'hex': '#ea8958',
\        'name': '晨曦红',
\        'pinyin': 'chenxihong'
\    },
\    '景泰蓝': {
\        'hex': '#2775b6',
\        'name': '景泰蓝',
\        'pinyin': 'jingtailan'
\    },
\    '晴山蓝': {
\        'hex': '#8fb2c9',
\        'name': '晴山蓝',
\        'pinyin': 'qingshanlan'
\    },
\    '晶石紫': {
\        'hex': '#1f2040',
\        'name': '晶石紫',
\        'pinyin': 'jingshizi'
\    },
\    '晶红': {
\        'hex': '#eea6b7',
\        'name': '晶红',
\        'pinyin': 'jinghong'
\    },
\    '暗海水绿': {
\        'hex': '#584717',
\        'name': '暗海水绿',
\        'pinyin': 'anhaishuilv'
\    },
\    '暗玉紫': {
\        'hex': '#5c2223',
\        'name': '暗玉紫',
\        'pinyin': 'anyuzi'
\    },
\    '暗紫苑红': {
\        'hex': '#82202b',
\        'name': '暗紫苑红',
\        'pinyin': 'anziyuanhong'
\    },
\    '暗蓝': {
\        'hex': '#101f30',
\        'name': '暗蓝',
\        'pinyin': 'anlan'
\    },
\    '暗蓝紫': {
\        'hex': '#131124',
\        'name': '暗蓝紫',
\        'pinyin': 'anlanzi'
\    },
\    '暗驼棕': {
\        'hex': '#592620',
\        'name': '暗驼棕',
\        'pinyin': 'antuozong'
\    },
\    '暗龙胆紫': {
\        'hex': '#22202e',
\        'name': '暗龙胆紫',
\        'pinyin': 'anlongdanzi'
\    },
\    '暮云灰': {
\        'hex': '#4f383e',
\        'name': '暮云灰',
\        'pinyin': 'muyunhui'
\    },
\    '曲红': {
\        'hex': '#f05a46',
\        'name': '曲红',
\        'pinyin': 'quhong'
\    },
\    '月季红': {
\        'hex': '#ce5777',
\        'name': '月季红',
\        'pinyin': 'yuejihong'
\    },
\    '月影白': {
\        'hex': '#c0c4c3',
\        'name': '月影白',
\        'pinyin': 'yueyingbai'
\    },
\    '月灰': {
\        'hex': '#b7ae8f',
\        'name': '月灰',
\        'pinyin': 'yuehui'
\    },
\    '月白': {
\        'hex': '#eef7f2',
\        'name': '月白',
\        'pinyin': 'yuebai'
\    },
\    '木瓜黄': {
\        'hex': '#f9c116',
\        'name': '木瓜黄',
\        'pinyin': 'muguahuang'
\    },
\    '朱红': {
\        'hex': '#ed5126',
\        'name': '朱红',
\        'pinyin': 'zhuhong'
\    },
\    '李紫': {
\        'hex': '#2b1216',
\        'name': '李紫',
\        'pinyin': 'lizi'
\    },
\    '杏仁黄': {
\        'hex': '#f7e8aa',
\        'name': '杏仁黄',
\        'pinyin': 'xingrenhuang'
\    },
\    '杏黄': {
\        'hex': '#f28e16',
\        'name': '杏黄',
\        'pinyin': 'xinghuang'
\    },
\    '松叶牡丹红': {
\        'hex': '#eb3c70',
\        'name': '松叶牡丹红',
\        'pinyin': 'songyemudanhong'
\    },
\    '松霜绿': {
\        'hex': '#83a78d',
\        'name': '松霜绿',
\        'pinyin': 'songshuanglv'
\    },
\    '松鼠灰': {
\        'hex': '#4f4032',
\        'name': '松鼠灰',
\        'pinyin': 'songshuhui'
\    },
\    '极光红': {
\        'hex': '#f33b1f',
\        'name': '极光红',
\        'pinyin': 'jiguanghong'
\    },
\    '枇杷黄': {
\        'hex': '#fca106',
\        'name': '枇杷黄',
\        'pinyin': 'pipahuang'
\    },
\    '枣红': {
\        'hex': '#7c1823',
\        'name': '枣红',
\        'pinyin': 'zaohong'
\    },
\    '枫叶红': {
\        'hex': '#c21f30',
\        'name': '枫叶红',
\        'pinyin': 'fengyehong'
\    },
\    '枯绿': {
\        'hex': '#b78d12',
\        'name': '枯绿',
\        'pinyin': 'kulv'
\    },
\    '枸枢红': {
\        'hex': '#ed3333',
\        'name': '枸枢红',
\        'pinyin': 'goushuhong'
\    },
\    '柏林蓝': {
\        'hex': '#126bae',
\        'name': '柏林蓝',
\        'pinyin': 'bolinlan'
\    },
\    '柚黄': {
\        'hex': '#f1ca17',
\        'name': '柚黄',
\        'pinyin': 'youhuang'
\    },
\    '柞叶棕': {
\        'hex': '#692a1b',
\        'name': '柞叶棕',
\        'pinyin': 'zhayezong'
\    },
\    '柠檬黄': {
\        'hex': '#fcd337',
\        'name': '柠檬黄',
\        'pinyin': 'ningmenghuang'
\    },
\    '柿红': {
\        'hex': '#f2481b',
\        'name': '柿红',
\        'pinyin': 'shihong'
\    },
\    '栀子黄': {
\        'hex': '#ebb10d',
\        'name': '栀子黄',
\        'pinyin': 'zhizihuang'
\    },
\    '栗棕': {
\        'hex': '#5c1e19',
\        'name': '栗棕',
\        'pinyin': 'lizong'
\    },
\    '栗紫': {
\        'hex': '#5a191b',
\        'name': '栗紫',
\        'pinyin': 'lizi'
\    },
\    '桂皮淡棕': {
\        'hex': '#c09351',
\        'name': '桂皮淡棕',
\        'pinyin': 'guipidanzong'
\    },
\    '桂红': {
\        'hex': '#f25a47',
\        'name': '桂红',
\        'pinyin': 'guihong'
\    },
\    '桃红': {
\        'hex': '#f0ada0',
\        'name': '桃红',
\        'pinyin': 'taohong'
\    },
\    '桔梗紫': {
\        'hex': '#813c85',
\        'name': '桔梗紫',
\        'pinyin': 'jiegengzi'
\    },
\    '梧枝绿': {
\        'hex': '#69a794',
\        'name': '梧枝绿',
\        'pinyin': 'wuzhilv'
\    },
\    '棕榈绿': {
\        'hex': '#5b4913',
\        'name': '棕榈绿',
\        'pinyin': 'zonglvlv'
\    },
\    '椰壳棕': {
\        'hex': '#883a1e',
\        'name': '椰壳棕',
\        'pinyin': 'yekezong'
\    },
\    '榲桲红': {
\        'hex': '#ed2f6a',
\        'name': '榲桲红',
\        'pinyin': 'wenpohong'
\    },
\    '榴子红': {
\        'hex': '#f1908c',
\        'name': '榴子红',
\        'pinyin': 'liuzihong'
\    },
\    '榴花红': {
\        'hex': '#f34718',
\        'name': '榴花红',
\        'pinyin': 'liuhuahong'
\    },
\    '榴萼黄': {
\        'hex': '#f9a633',
\        'name': '榴萼黄',
\        'pinyin': 'liuehuang'
\    },
\    '槐花黄绿': {
\        'hex': '#d2d97a',
\        'name': '槐花黄绿',
\        'pinyin': 'huaihuahuanglv'
\    },
\    '槟榔综': {
\        'hex': '#c1651a',
\        'name': '槟榔综',
\        'pinyin': 'binglangzong'
\    },
\    '槲寄生绿': {
\        'hex': '#2b312c',
\        'name': '槲寄生绿',
\        'pinyin': 'hujishenglv'
\    },
\    '槿紫': {
\        'hex': '#806d9e',
\        'name': '槿紫',
\        'pinyin': 'jinzi'
\    },
\    '樫鸟蓝': {
\        'hex': '#1491a8',
\        'name': '樫鸟蓝',
\        'pinyin': 'jianniaolan'
\    },
\    '樱桃红': {
\        'hex': '#ed3321',
\        'name': '樱桃红',
\        'pinyin': 'yingtaohong'
\    },
\    '樱草紫': {
\        'hex': '#c06f98',
\        'name': '樱草紫',
\        'pinyin': 'yingcaozi'
\    },
\    '橄榄灰': {
\        'hex': '#503e2a',
\        'name': '橄榄灰',
\        'pinyin': 'ganlanhui'
\    },
\    '橄榄石绿': {
\        'hex': '#b2cf87',
\        'name': '橄榄石绿',
\        'pinyin': 'ganlanshilv'
\    },
\    '橄榄绿': {
\        'hex': '#5e5314',
\        'name': '橄榄绿',
\        'pinyin': 'ganlanlv'
\    },
\    '橄榄黄绿': {
\        'hex': '#bec936',
\        'name': '橄榄黄绿',
\        'pinyin': 'ganlanhuanglv'
\    },
\    '橘橙': {
\        'hex': '#f97d1c',
\        'name': '橘橙',
\        'pinyin': 'jucheng'
\    },
\    '橙皮黄': {
\        'hex': '#fca104',
\        'name': '橙皮黄',
\        'pinyin': 'chengpihuang'
\    },
\    '橡树棕': {
\        'hex': '#773d31',
\        'name': '橡树棕',
\        'pinyin': 'xiangshuzong'
\    },
\    '檀紫': {
\        'hex': '#381924',
\        'name': '檀紫',
\        'pinyin': 'tanzi'
\    },
\    '殷红': {
\        'hex': '#82111f',
\        'name': '殷红',
\        'pinyin': 'yanhong'
\    },
\    '毛绿': {
\        'hex': '#66c18c',
\        'name': '毛绿',
\        'pinyin': 'maolv'
\    },
\    '水牛灰': {
\        'hex': '#2f2f35',
\        'name': '水牛灰',
\        'pinyin': 'shuiniuhui'
\    },
\    '水红': {
\        'hex': '#f1c4cd',
\        'name': '水红',
\        'pinyin': 'shuihong'
\    },
\    '水绿': {
\        'hex': '#8cc269',
\        'name': '水绿',
\        'pinyin': 'shuilv'
\    },
\    '汉白玉': {
\        'hex': '#f8f4ed',
\        'name': '汉白玉',
\        'pinyin': 'hanbaiyu'
\    },
\    '沙石黄': {
\        'hex': '#e5b751',
\        'name': '沙石黄',
\        'pinyin': 'shashihuang'
\    },
\    '沙鱼灰': {
\        'hex': '#35333c',
\        'name': '沙鱼灰',
\        'pinyin': 'shayuhui'
\    },
\    '河豚灰': {
\        'hex': '#393733',
\        'name': '河豚灰',
\        'pinyin': 'hetunhui'
\    },
\    '油绿': {
\        'hex': '#253d24',
\        'name': '油绿',
\        'pinyin': 'youlv'
\    },
\    '油菜花黄': {
\        'hex': '#fbda41',
\        'name': '油菜花黄',
\        'pinyin': 'youcaihuahuang'
\    },
\    '法螺红': {
\        'hex': '#ee8055',
\        'name': '法螺红',
\        'pinyin': 'faluohong'
\    },
\    '洋水仙红': {
\        'hex': '#f4c7ba',
\        'name': '洋水仙红',
\        'pinyin': 'yangshuixianhong'
\    },
\    '洋葱紫': {
\        'hex': '#a8456b',
\        'name': '洋葱紫',
\        'pinyin': 'yangcongzi'
\    },
\    '浅灰': {
\        'hex': '#dad4cb',
\        'name': '浅灰',
\        'pinyin': 'qianhui'
\    },
\    '浅烙黄': {
\        'hex': '#f9bd10',
\        'name': '浅烙黄',
\        'pinyin': 'qianlaohuang'
\    },
\    '浅驼色': {
\        'hex': '#e2c17c',
\        'name': '浅驼色',
\        'pinyin': 'qiantuose'
\    },
\    '浪花绿': {
\        'hex': '#92b3a5',
\        'name': '浪花绿',
\        'pinyin': 'langhualv'
\    },
\    '海军蓝': {
\        'hex': '#346c9c',
\        'name': '海军蓝',
\        'pinyin': 'haijunlan'
\    },
\    '海参灰': {
\        'hex': '#fffefa',
\        'name': '海参灰',
\        'pinyin': 'haishenhui'
\    },
\    '海天蓝': {
\        'hex': '#c6e6e8',
\        'name': '海天蓝',
\        'pinyin': 'haitianlan'
\    },
\    '海报灰': {
\        'hex': '#483332',
\        'name': '海报灰',
\        'pinyin': 'haibaohui'
\    },
\    '海棠红': {
\        'hex': '#f03752',
\        'name': '海棠红',
\        'pinyin': 'haitanghong'
\    },
\    '海沬绿': {
\        'hex': '#e2e7bf',
\        'name': '海沬绿',
\        'pinyin': 'haimeilv'
\    },
\    '海涛蓝': {
\        'hex': '#15559a',
\        'name': '海涛蓝',
\        'pinyin': 'haitaolan'
\    },
\    '海王绿': {
\        'hex': '#248067',
\        'name': '海王绿',
\        'pinyin': 'haiwanglv'
\    },
\    '海螺橙': {
\        'hex': '#f0945d',
\        'name': '海螺橙',
\        'pinyin': 'hailuocheng'
\    },
\    '海象紫': {
\        'hex': '#4b1e2f',
\        'name': '海象紫',
\        'pinyin': 'haixiangzi'
\    },
\    '海青': {
\        'hex': '#22a2c3',
\        'name': '海青',
\        'pinyin': 'haiqing'
\    },
\    '海鸥灰': {
\        'hex': '#9a8878',
\        'name': '海鸥灰',
\        'pinyin': 'haiouhui'
\    },
\    '润红': {
\        'hex': '#f7cdbc',
\        'name': '润红',
\        'pinyin': 'runhong'
\    },
\    '涧石蓝': {
\        'hex': '#66a9c9',
\        'name': '涧石蓝',
\        'pinyin': 'jianshilan'
\    },
\    '淡可可棕': {
\        'hex': '#b7511d',
\        'name': '淡可可棕',
\        'pinyin': 'dankekezong'
\    },
\    '淡咖啡': {
\        'hex': '#945833',
\        'name': '淡咖啡',
\        'pinyin': 'dankafei'
\    },
\    '淡土黄': {
\        'hex': '#8c4b31',
\        'name': '淡土黄',
\        'pinyin': 'dantuhuang'
\    },
\    '淡密黄': {
\        'hex': '#f9d367',
\        'name': '淡密黄',
\        'pinyin': 'danmihuang'
\    },
\    '淡曙红': {
\        'hex': '#ee2746',
\        'name': '淡曙红',
\        'pinyin': 'danshuhong'
\    },
\    '淡松烟': {
\        'hex': '#4d4030',
\        'name': '淡松烟',
\        'pinyin': 'dansongyan'
\    },
\    '淡栗棕': {
\        'hex': '#673424',
\        'name': '淡栗棕',
\        'pinyin': 'danlizong'
\    },
\    '淡桃红': {
\        'hex': '#f6cec1',
\        'name': '淡桃红',
\        'pinyin': 'dantaohong'
\    },
\    '淡橘橙': {
\        'hex': '#fba414',
\        'name': '淡橘橙',
\        'pinyin': 'danjucheng'
\    },
\    '淡灰绿': {
\        'hex': '#ad9e5f',
\        'name': '淡灰绿',
\        'pinyin': 'danhuilv'
\    },
\    '淡牵牛紫': {
\        'hex': '#d1c2d3',
\        'name': '淡牵牛紫',
\        'pinyin': 'danqianniuzi'
\    },
\    '淡玫瑰灰': {
\        'hex': '#b89485',
\        'name': '淡玫瑰灰',
\        'pinyin': 'danmeiguihui'
\    },
\    '淡米粉': {
\        'hex': '#fbeee2',
\        'name': '淡米粉',
\        'pinyin': 'danmifen'
\    },
\    '淡绛红': {
\        'hex': '#ec7696',
\        'name': '淡绛红',
\        'pinyin': 'danjianghong'
\    },
\    '淡绯': {
\        'hex': '#f2cac9',
\        'name': '淡绯',
\        'pinyin': 'danfei'
\    },
\    '淡绿': {
\        'hex': '#61ac85',
\        'name': '淡绿',
\        'pinyin': 'danlv'
\    },
\    '淡绿灰': {
\        'hex': '#70887d',
\        'name': '淡绿灰',
\        'pinyin': 'danlvhui'
\    },
\    '淡罂粟红': {
\        'hex': '#eea08c',
\        'name': '淡罂粟红',
\        'pinyin': 'danyingsuhong'
\    },
\    '淡翠绿': {
\        'hex': '#c6dfc8',
\        'name': '淡翠绿',
\        'pinyin': 'dancuilv'
\    },
\    '淡肉色': {
\        'hex': '#f8e0b0',
\        'name': '淡肉色',
\        'pinyin': 'danrouse'
\    },
\    '淡茜红': {
\        'hex': '#e77c8e',
\        'name': '淡茜红',
\        'pinyin': 'danqianhong'
\    },
\    '淡茧黄': {
\        'hex': '#f9d770',
\        'name': '淡茧黄',
\        'pinyin': 'danjianhuang'
\    },
\    '淡菽红': {
\        'hex': '#ed4845',
\        'name': '淡菽红',
\        'pinyin': 'danshuhong'
\    },
\    '淡蓝灰': {
\        'hex': '#5e7987',
\        'name': '淡蓝灰',
\        'pinyin': 'danlanhui'
\    },
\    '淡蓝紫': {
\        'hex': '#a7a8bd',
\        'name': '淡蓝紫',
\        'pinyin': 'danlanzi'
\    },
\    '淡蕊香红': {
\        'hex': '#ee4866',
\        'name': '淡蕊香红',
\        'pinyin': 'danruixianghong'
\    },
\    '淡藏花红': {
\        'hex': '#f6ad8f',
\        'name': '淡藏花红',
\        'pinyin': 'dancanghuahong'
\    },
\    '淡藤萝紫': {
\        'hex': '#f2e7e5',
\        'name': '淡藤萝紫',
\        'pinyin': 'dantengluozi'
\    },
\    '淡豆沙': {
\        'hex': '#873d24',
\        'name': '淡豆沙',
\        'pinyin': 'dandousha'
\    },
\    '淡赭': {
\        'hex': '#be7e4a',
\        'name': '淡赭',
\        'pinyin': 'danzhe'
\    },
\    '淡铁灰': {
\        'hex': '#5b423a',
\        'name': '淡铁灰',
\        'pinyin': 'dantiehui'
\    },
\    '淡银灰': {
\        'hex': '#c1b2a3',
\        'name': '淡银灰',
\        'pinyin': 'danyinhui'
\    },
\    '淡青紫': {
\        'hex': '#e0c8d1',
\        'name': '淡青紫',
\        'pinyin': 'danqingzi'
\    },
\    '深海绿': {
\        'hex': '#1a3b32',
\        'name': '深海绿',
\        'pinyin': 'shenhailv'
\    },
\    '深灰': {
\        'hex': '#81776e',
\        'name': '深灰',
\        'pinyin': 'shenhui'
\    },
\    '深灰蓝': {
\        'hex': '#132c33',
\        'name': '深灰蓝',
\        'pinyin': 'shenhuilan'
\    },
\    '深牵牛紫': {
\        'hex': '#1c0d1a',
\        'name': '深牵牛紫',
\        'pinyin': 'shenqianniuzi'
\    },
\    '清水蓝': {
\        'hex': '#93d5dc',
\        'name': '清水蓝',
\        'pinyin': 'qingshuilan'
\    },
\    '湖水蓝': {
\        'hex': '#b0d5df',
\        'name': '湖水蓝',
\        'pinyin': 'hushuilan'
\    },
\    '满天星紫': {
\        'hex': '#2e317c',
\        'name': '满天星紫',
\        'pinyin': 'mantianxingzi'
\    },
\    '满江红': {
\        'hex': '#a7535a',
\        'name': '满江红',
\        'pinyin': 'manjianghong'
\    },
\    '潭水绿': {
\        'hex': '#645822',
\        'name': '潭水绿',
\        'pinyin': 'tanshuilv'
\    },
\    '潮蓝': {
\        'hex': '#2983bb',
\        'name': '潮蓝',
\        'pinyin': 'chaolan'
\    },
\    '瀑布蓝': {
\        'hex': '#51c4d3',
\        'name': '瀑布蓝',
\        'pinyin': 'pubulan'
\    },
\    '火山棕': {
\        'hex': '#482522',
\        'name': '火山棕',
\        'pinyin': 'huoshanzong'
\    },
\    '火岩棕': {
\        'hex': '#863020',
\        'name': '火岩棕',
\        'pinyin': 'huoyanzong'
\    },
\    '火泥棕': {
\        'hex': '#aa6a4c',
\        'name': '火泥棕',
\        'pinyin': 'huonizong'
\    },
\    '火砖红': {
\        'hex': '#cd6227',
\        'name': '火砖红',
\        'pinyin': 'huozhuanhong'
\    },
\    '火鹅紫': {
\        'hex': '#33141e',
\        'name': '火鹅紫',
\        'pinyin': 'huoezi'
\    },
\    '灰绿': {
\        'hex': '#8a6913',
\        'name': '灰绿',
\        'pinyin': 'huilv'
\    },
\    '灰蓝': {
\        'hex': '#21373d',
\        'name': '灰蓝',
\        'pinyin': 'huilan'
\    },
\    '炒米黄': {
\        'hex': '#f4ce69',
\        'name': '炒米黄',
\        'pinyin': 'chaomihuang'
\    },
\    '烟红': {
\        'hex': '#894e54',
\        'name': '烟红',
\        'pinyin': 'yanhong'
\    },
\    '焦茶绿': {
\        'hex': '#553b18',
\        'name': '焦茶绿',
\        'pinyin': 'jiaochalv'
\    },
\    '燕羽灰': {
\        'hex': '#685e48',
\        'name': '燕羽灰',
\        'pinyin': 'yanyuhui'
\    },
\    '燕颔红': {
\        'hex': '#fc6315',
\        'name': '燕颔红',
\        'pinyin': 'yanhanhong'
\    },
\    '燕颔蓝': {
\        'hex': '#131824',
\        'name': '燕颔蓝',
\        'pinyin': 'yanhanlan'
\    },
\    '牛角灰': {
\        'hex': '#2d2e36',
\        'name': '牛角灰',
\        'pinyin': 'niujiaohui'
\    },
\    '牡丹粉红': {
\        'hex': '#eea2a4',
\        'name': '牡丹粉红',
\        'pinyin': 'mudanfenhong'
\    },
\    '牵牛紫': {
\        'hex': '#681752',
\        'name': '牵牛紫',
\        'pinyin': 'qianniuzi'
\    },
\    '牵牛花蓝': {
\        'hex': '#1177b0',
\        'name': '牵牛花蓝',
\        'pinyin': 'qianniuhualan'
\    },
\    '狼烟灰': {
\        'hex': '#5d655f',
\        'name': '狼烟灰',
\        'pinyin': 'langyanhui'
\    },
\    '猪肝紫': {
\        'hex': '#541e24',
\        'name': '猪肝紫',
\        'pinyin': 'zhuganzi'
\    },
\    '猴毛灰': {
\        'hex': '#97846c',
\        'name': '猴毛灰',
\        'pinyin': 'houmaohui'
\    },
\    '玉簪绿': {
\        'hex': '#a4cab6',
\        'name': '玉簪绿',
\        'pinyin': 'yuzanlv'
\    },
\    '玉粉红': {
\        'hex': '#e8b49a',
\        'name': '玉粉红',
\        'pinyin': 'yufenhong'
\    },
\    '玉红': {
\        'hex': '#c04851',
\        'name': '玉红',
\        'pinyin': 'yuhong'
\    },
\    '玉鈫蓝': {
\        'hex': '#126e82',
\        'name': '玉鈫蓝',
\        'pinyin': 'yuqinlan'
\    },
\    '玉髓绿': {
\        'hex': '#41b349',
\        'name': '玉髓绿',
\        'pinyin': 'yusuilv'
\    },
\    '玛瑙灰': {
\        'hex': '#cfccc9',
\        'name': '玛瑙灰',
\        'pinyin': 'manaohui'
\    },
\    '玫瑰灰': {
\        'hex': '#4b2e2b',
\        'name': '玫瑰灰',
\        'pinyin': 'meiguihui'
\    },
\    '玫瑰粉': {
\        'hex': '#f8b37f',
\        'name': '玫瑰粉',
\        'pinyin': 'meiguifen'
\    },
\    '玫瑰紫': {
\        'hex': '#ba2f7b',
\        'name': '玫瑰紫',
\        'pinyin': 'meiguizi'
\    },
\    '玫瑰红': {
\        'hex': '#d2357d',
\        'name': '玫瑰红',
\        'pinyin': 'meiguihong'
\    },
\    '玳瑁黄': {
\        'hex': '#daa45a',
\        'name': '玳瑁黄',
\        'pinyin': 'daimaohuang'
\    },
\    '珊瑚红': {
\        'hex': '#f04a3a',
\        'name': '珊瑚红',
\        'pinyin': 'shanhuhong'
\    },
\    '珍珠灰': {
\        'hex': '#e4dfd7',
\        'name': '珍珠灰',
\        'pinyin': 'zhenzhuhui'
\    },
\    '珠母灰': {
\        'hex': '#64483d',
\        'name': '珠母灰',
\        'pinyin': 'zhumuhui'
\    },
\    '琥珀黄': {
\        'hex': '#feba07',
\        'name': '琥珀黄',
\        'pinyin': 'hupohuang'
\    },
\    '瓜瓤粉': {
\        'hex': '#f9cb8b',
\        'name': '瓜瓤粉',
\        'pinyin': 'guarangfen'
\    },
\    '瓜瓤红': {
\        'hex': '#f68c60',
\        'name': '瓜瓤红',
\        'pinyin': 'guaranghong'
\    },
\    '瓦松绿': {
\        'hex': '#6e8b74',
\        'name': '瓦松绿',
\        'pinyin': 'wasonglv'
\    },
\    '瓦灰': {
\        'hex': '#867e76',
\        'name': '瓦灰',
\        'pinyin': 'wahui'
\    },
\    '瓦罐灰': {
\        'hex': '#47484c',
\        'name': '瓦罐灰',
\        'pinyin': 'waguanhui'
\    },
\    '甘草黄': {
\        'hex': '#f3bf4c',
\        'name': '甘草黄',
\        'pinyin': 'gancaohuang'
\    },
\    '甘蔗紫': {
\        'hex': '#621624',
\        'name': '甘蔗紫',
\        'pinyin': 'ganzhezi'
\    },
\    '田园绿': {
\        'hex': '#68b88e',
\        'name': '田园绿',
\        'pinyin': 'tianyuanlv'
\    },
\    '田螺绿': {
\        'hex': '#5e665b',
\        'name': '田螺绿',
\        'pinyin': 'tianluolv'
\    },
\    '电气石红': {
\        'hex': '#c35691',
\        'name': '电气石红',
\        'pinyin': 'dianqishihong'
\    },
\    '甸子蓝': {
\        'hex': '#10aec2',
\        'name': '甸子蓝',
\        'pinyin': 'dianzilan'
\    },
\    '白屈菜绿': {
\        'hex': '#485b4d',
\        'name': '白屈菜绿',
\        'pinyin': 'baiqucailv'
\    },
\    '白芨红': {
\        'hex': '#de7897',
\        'name': '白芨红',
\        'pinyin': 'baijihong'
\    },
\    '百灵鸟灰': {
\        'hex': '#b4a992',
\        'name': '百灵鸟灰',
\        'pinyin': 'bailingniaohui'
\    },
\    '睛蓝': {
\        'hex': '#5698c3',
\        'name': '睛蓝',
\        'pinyin': 'jinglan'
\    },
\    '石板灰': {
\        'hex': '#624941',
\        'name': '石板灰',
\        'pinyin': 'shibanhui'
\    },
\    '石竹紫': {
\        'hex': '#63071c',
\        'name': '石竹紫',
\        'pinyin': 'shizhuzi'
\    },
\    '石竹红': {
\        'hex': '#ee4863',
\        'name': '石竹红',
\        'pinyin': 'shizhuhong'
\    },
\    '石绿': {
\        'hex': '#57c3c2',
\        'name': '石绿',
\        'pinyin': 'shilv'
\    },
\    '石蕊红': {
\        'hex': '#f0c9cf',
\        'name': '石蕊红',
\        'pinyin': 'shiruihong'
\    },
\    '硫华黄': {
\        'hex': '#f2ce2b',
\        'name': '硫华黄',
\        'pinyin': 'liuhuahuang'
\    },
\    '碧螺春绿': {
\        'hex': '#867018',
\        'name': '碧螺春绿',
\        'pinyin': 'biluochunlv'
\    },
\    '碧青': {
\        'hex': '#5cb3cc',
\        'name': '碧青',
\        'pinyin': 'biqing'
\    },
\    '磨石紫': {
\        'hex': '#382129',
\        'name': '磨石紫',
\        'pinyin': 'moshizi'
\    },
\    '秋波蓝': {
\        'hex': '#8abcd1',
\        'name': '秋波蓝',
\        'pinyin': 'qiubolan'
\    },
\    '秋海棠红': {
\        'hex': '#ec2b24',
\        'name': '秋海棠红',
\        'pinyin': 'qiuhaitanghong'
\    },
\    '秋葵黄': {
\        'hex': '#eed045',
\        'name': '秋葵黄',
\        'pinyin': 'qiukuihuang'
\    },
\    '穹灰': {
\        'hex': '#c4d7d6',
\        'name': '穹灰',
\        'pinyin': 'qionghui'
\    },
\    '竹篁绿': {
\        'hex': '#b9dec9',
\        'name': '竹篁绿',
\        'pinyin': 'zhuhuanglv'
\    },
\    '竹绿': {
\        'hex': '#1ba784',
\        'name': '竹绿',
\        'pinyin': 'zhulv'
\    },
\    '筍皮棕': {
\        'hex': '#732e12',
\        'name': '筍皮棕',
\        'pinyin': 'sunpizong'
\    },
\    '篾黄': {
\        'hex': '#f7de98',
\        'name': '篾黄',
\        'pinyin': 'miehuang'
\    },
\    '米色': {
\        'hex': '#f9e9cd',
\        'name': '米色',
\        'pinyin': 'mise'
\    },
\    '粉团花红': {
\        'hex': '#ec9bad',
\        'name': '粉团花红',
\        'pinyin': 'fentuanhuahong'
\    },
\    '粉白': {
\        'hex': '#fbf2e3',
\        'name': '粉白',
\        'pinyin': 'fenbai'
\    },
\    '粉红': {
\        'hex': '#f2b9b2',
\        'name': '粉红',
\        'pinyin': 'fenhong'
\    },
\    '粉绿': {
\        'hex': '#83cbac',
\        'name': '粉绿',
\        'pinyin': 'fenlv'
\    },
\    '粽叶绿': {
\        'hex': '#876818',
\        'name': '粽叶绿',
\        'pinyin': 'zongyelv'
\    },
\    '素馨黄': {
\        'hex': '#fccb16',
\        'name': '素馨黄',
\        'pinyin': 'suxinhuang'
\    },
\    '紫灰': {
\        'hex': '#5d3f51',
\        'name': '紫灰',
\        'pinyin': 'zihui'
\    },
\    '紫荆红': {
\        'hex': '#ee2c79',
\        'name': '紫荆红',
\        'pinyin': 'zijinghong'
\    },
\    '红汞红': {
\        'hex': '#f23e23',
\        'name': '红汞红',
\        'pinyin': 'honggonghong'
\    },
\    '绀紫': {
\        'hex': '#461629',
\        'name': '绀紫',
\        'pinyin': 'ganzi'
\    },
\    '绀红': {
\        'hex': '#a6522c',
\        'name': '绀红',
\        'pinyin': 'ganhong'
\    },
\    '绿灰': {
\        'hex': '#314a43',
\        'name': '绿灰',
\        'pinyin': 'lvhui'
\    },
\    '美人焦橙': {
\        'hex': '#fa7e23',
\        'name': '美人焦橙',
\        'pinyin': 'meirenjiaocheng'
\    },
\    '美蝶绿': {
\        'hex': '#12aa9c',
\        'name': '美蝶绿',
\        'pinyin': 'meidielv'
\    },
\    '群青': {
\        'hex': '#1772b4',
\        'name': '群青',
\        'pinyin': 'qunqing'
\    },
\    '羽扇豆蓝': {
\        'hex': '#619ac3',
\        'name': '羽扇豆蓝',
\        'pinyin': 'yushandoulan'
\    },
\    '翠绿': {
\        'hex': '#20a162',
\        'name': '翠绿',
\        'pinyin': 'cuilv'
\    },
\    '翠蓝': {
\        'hex': '#1e9eb3',
\        'name': '翠蓝',
\        'pinyin': 'cuilan'
\    },
\    '肉色': {
\        'hex': '#f7c173',
\        'name': '肉色',
\        'pinyin': 'rouse'
\    },
\    '胆矾蓝': {
\        'hex': '#0f95b0',
\        'name': '胆矾蓝',
\        'pinyin': 'danfanlan'
\    },
\    '胭脂红': {
\        'hex': '#f03f24',
\        'name': '胭脂红',
\        'pinyin': 'yanzhihong'
\    },
\    '舌红': {
\        'hex': '#f19790',
\        'name': '舌红',
\        'pinyin': 'shehong'
\    },
\    '艳红': {
\        'hex': '#ed5a65',
\        'name': '艳红',
\        'pinyin': 'yanhong'
\    },
\    '艾绿': {
\        'hex': '#cad3c3',
\        'name': '艾绿',
\        'pinyin': 'ailv'
\    },
\    '艾背绿': {
\        'hex': '#dfecd5',
\        'name': '艾背绿',
\        'pinyin': 'aibeilv'
\    },
\    '芍药耕红': {
\        'hex': '#eba0b3',
\        'name': '芍药耕红',
\        'pinyin': 'shaoyaogenghong'
\    },
\    '芒果棕': {
\        'hex': '#954416',
\        'name': '芒果棕',
\        'pinyin': 'mangguozong'
\    },
\    '芒果黄': {
\        'hex': '#ddc871',
\        'name': '芒果黄',
\        'pinyin': 'mangguohuang'
\    },
\    '芓紫': {
\        'hex': '#894276',
\        'name': '芓紫',
\        'pinyin': 'zizi'
\    },
\    '芙蓉红': {
\        'hex': '#f9723d',
\        'name': '芙蓉红',
\        'pinyin': 'furonghong'
\    },
\    '芝兰紫': {
\        'hex': '#e9ccd3',
\        'name': '芝兰紫',
\        'pinyin': 'zhilanzi'
\    },
\    '芡食白': {
\        'hex': '#e2e1e4',
\        'name': '芡食白',
\        'pinyin': 'qianshibai'
\    },
\    '芥花紫': {
\        'hex': '#983680',
\        'name': '芥花紫',
\        'pinyin': 'jiehuazi'
\    },
\    '芥黄': {
\        'hex': '#d9a40e',
\        'name': '芥黄',
\        'pinyin': 'jiehuang'
\    },
\    '芦灰': {
\        'hex': '#856d72',
\        'name': '芦灰',
\        'pinyin': 'luhui'
\    },
\    '芦穗灰': {
\        'hex': '#bdaead',
\        'name': '芦穗灰',
\        'pinyin': 'lusuihui'
\    },
\    '芦苇绿': {
\        'hex': '#b7d07a',
\        'name': '芦苇绿',
\        'pinyin': 'luweilv'
\    },
\    '花青': {
\        'hex': '#2376b7',
\        'name': '花青',
\        'pinyin': 'huaqing'
\    },
\    '芽绿': {
\        'hex': '#96c24e',
\        'name': '芽绿',
\        'pinyin': 'yalv'
\    },
\    '苋菜紫': {
\        'hex': '#9b1e64',
\        'name': '苋菜紫',
\        'pinyin': 'xiancaizi'
\    },
\    '苋菜红': {
\        'hex': '#a61b29',
\        'name': '苋菜红',
\        'pinyin': 'xiancaihong'
\    },
\    '苍绿': {
\        'hex': '#223e36',
\        'name': '苍绿',
\        'pinyin': 'canglv'
\    },
\    '苍蓝': {
\        'hex': '#134857',
\        'name': '苍蓝',
\        'pinyin': 'canglan'
\    },
\    '苍蝇灰': {
\        'hex': '#36282b',
\        'name': '苍蝇灰',
\        'pinyin': 'cangyinghui'
\    },
\    '苍黄': {
\        'hex': '#806332',
\        'name': '苍黄',
\        'pinyin': 'canghuang'
\    },
\    '苔绿': {
\        'hex': '#887322',
\        'name': '苔绿',
\        'pinyin': 'tailv'
\    },
\    '苷蓝绿': {
\        'hex': '#1f2623',
\        'name': '苷蓝绿',
\        'pinyin': 'ganlanlv'
\    },
\    '苹果红': {
\        'hex': '#f15642',
\        'name': '苹果红',
\        'pinyin': 'pingguohong'
\    },
\    '苹果绿': {
\        'hex': '#bacf65',
\        'name': '苹果绿',
\        'pinyin': 'pingguolv'
\    },
\    '茄皮紫': {
\        'hex': '#2d0c13',
\        'name': '茄皮紫',
\        'pinyin': 'qiepizi'
\    },
\    '茉莉黄': {
\        'hex': '#f8df72',
\        'name': '茉莉黄',
\        'pinyin': 'molihuang'
\    },
\    '茶花红': {
\        'hex': '#ee3f4d',
\        'name': '茶花红',
\        'pinyin': 'chahuahong'
\    },
\    '茶褐': {
\        'hex': '#5d3d21',
\        'name': '茶褐',
\        'pinyin': 'chahe'
\    },
\    '草原远绿': {
\        'hex': '#9abeaf',
\        'name': '草原远绿',
\        'pinyin': 'caoyuanyuanlv'
\    },
\    '草灰绿': {
\        'hex': '#8e804b',
\        'name': '草灰绿',
\        'pinyin': 'caohuilv'
\    },
\    '草珠红': {
\        'hex': '#f8ebe6',
\        'name': '草珠红',
\        'pinyin': 'caozhuhong'
\    },
\    '草茉莉红': {
\        'hex': '#ef475d',
\        'name': '草茉莉红',
\        'pinyin': 'caomolihong'
\    },
\    '草莓红': {
\        'hex': '#ef6f48',
\        'name': '草莓红',
\        'pinyin': 'caomeihong'
\    },
\    '草黄': {
\        'hex': '#d2b42c',
\        'name': '草黄',
\        'pinyin': 'caohuang'
\    },
\    '荔肉白': {
\        'hex': '#f2e6ce',
\        'name': '荔肉白',
\        'pinyin': 'liroubai'
\    },
\    '荷叶绿': {
\        'hex': '#1a6840',
\        'name': '荷叶绿',
\        'pinyin': 'heyelv'
\    },
\    '荷花白': {
\        'hex': '#fbecde',
\        'name': '荷花白',
\        'pinyin': 'hehuabai'
\    },
\    '荸荠紫': {
\        'hex': '#411c35',
\        'name': '荸荠紫',
\        'pinyin': 'biqizi'
\    },
\    '莓红': {
\        'hex': '#c45a65',
\        'name': '莓红',
\        'pinyin': 'meihong'
\    },
\    '莓酱红': {
\        'hex': '#fa5d19',
\        'name': '莓酱红',
\        'pinyin': 'meijianghong'
\    },
\    '莱阳梨黄': {
\        'hex': '#815f25',
\        'name': '莱阳梨黄',
\        'pinyin': 'laiyanglihuang'
\    },
\    '莲子白': {
\        'hex': '#e5d3aa',
\        'name': '莲子白',
\        'pinyin': 'lianzibai'
\    },
\    '莲瓣红': {
\        'hex': '#ea517f',
\        'name': '莲瓣红',
\        'pinyin': 'lianbanhong'
\    },
\    '莽丛绿': {
\        'hex': '#141e1b',
\        'name': '莽丛绿',
\        'pinyin': 'mangconglv'
\    },
\    '菊蕾白': {
\        'hex': '#e9ddb6',
\        'name': '菊蕾白',
\        'pinyin': 'juleibai'
\    },
\    '菜头紫': {
\        'hex': '#951c48',
\        'name': '菜头紫',
\        'pinyin': 'caitouzi'
\    },
\    '菠根红': {
\        'hex': '#d13c74',
\        'name': '菠根红',
\        'pinyin': 'bogenhong'
\    },
\    '菠萝红': {
\        'hex': '#fc7930',
\        'name': '菠萝红',
\        'pinyin': 'boluohong'
\    },
\    '菱锰红': {
\        'hex': '#d276a3',
\        'name': '菱锰红',
\        'pinyin': 'lingmenghong'
\    },
\    '萝兰紫': {
\        'hex': '#c08eaf',
\        'name': '萝兰紫',
\        'pinyin': 'luolanzi'
\    },
\    '萝卜红': {
\        'hex': '#f13c22',
\        'name': '萝卜红',
\        'pinyin': 'luobohong'
\    },
\    '落英淡粉': {
\        'hex': '#f9e8d0',
\        'name': '落英淡粉',
\        'pinyin': 'luoyingdanfen'
\    },
\    '落霞红': {
\        'hex': '#cf4813',
\        'name': '落霞红',
\        'pinyin': 'luoxiahong'
\    },
\    '葛巾紫': {
\        'hex': '#7e2065',
\        'name': '葛巾紫',
\        'pinyin': 'gejinzi'
\    },
\    '葡萄紫': {
\        'hex': '#4c1f24',
\        'name': '葡萄紫',
\        'pinyin': 'putaozi'
\    },
\    '葡萄酒红': {
\        'hex': '#62102e',
\        'name': '葡萄酒红',
\        'pinyin': 'putaojiuhong'
\    },
\    '葡萄酱紫': {
\        'hex': '#5a1216',
\        'name': '葡萄酱紫',
\        'pinyin': 'putaojiangzi'
\    },
\    '葱绿': {
\        'hex': '#40a070',
\        'name': '葱绿',
\        'pinyin': 'conglv'
\    },
\    '葵扇黄': {
\        'hex': '#f8d86a',
\        'name': '葵扇黄',
\        'pinyin': 'kuishanhuang'
\    },
\    '蒽油绿': {
\        'hex': '#373834',
\        'name': '蒽油绿',
\        'pinyin': 'enyoulv'
\    },
\    '蒿黄': {
\        'hex': '#dfc243',
\        'name': '蒿黄',
\        'pinyin': 'haohuang'
\    },
\    '蓝绿': {
\        'hex': '#12a182',
\        'name': '蓝绿',
\        'pinyin': 'lanlv'
\    },
\    '蓟粉红': {
\        'hex': '#e6d2d5',
\        'name': '蓟粉红',
\        'pinyin': 'jifenhong'
\    },
\    '蔚蓝': {
\        'hex': '#29b7cb',
\        'name': '蔚蓝',
\        'pinyin': 'weilan'
\    },
\    '蔻梢绿': {
\        'hex': '#5dbe8a',
\        'name': '蔻梢绿',
\        'pinyin': 'koushaolv'
\    },
\    '蕈紫': {
\        'hex': '#815c94',
\        'name': '蕈紫',
\        'pinyin': 'xunzi'
\    },
\    '薄荷绿': {
\        'hex': '#207f4c',
\        'name': '薄荷绿',
\        'pinyin': 'bohelv'
\    },
\    '藏花红': {
\        'hex': '#ec2d7a',
\        'name': '藏花红',
\        'pinyin': 'canghuahong'
\    },
\    '藕荷': {
\        'hex': '#edc3ae',
\        'name': '藕荷',
\        'pinyin': 'ouhe'
\    },
\    '藤萝紫': {
\        'hex': '#8076a3',
\        'name': '藤萝紫',
\        'pinyin': 'tengluozi'
\    },
\    '藤黄': {
\        'hex': '#ffd111',
\        'name': '藤黄',
\        'pinyin': 'tenghuang'
\    },
\    '虎皮黄': {
\        'hex': '#eaad1a',
\        'name': '虎皮黄',
\        'pinyin': 'hupihuang'
\    },
\    '虹蓝': {
\        'hex': '#2177b8',
\        'name': '虹蓝',
\        'pinyin': 'honglan'
\    },
\    '虾壳青': {
\        'hex': '#869d9d',
\        'name': '虾壳青',
\        'pinyin': 'xiakeqing'
\    },
\    '蚌肉白': {
\        'hex': '#f9f1db',
\        'name': '蚌肉白',
\        'pinyin': 'bangroubai'
\    },
\    '蛋壳黄': {
\        'hex': '#f8c387',
\        'name': '蛋壳黄',
\        'pinyin': 'dankehuang'
\    },
\    '蛋白石绿': {
\        'hex': '#579572',
\        'name': '蛋白石绿',
\        'pinyin': 'danbaishilv'
\    },
\    '蛙绿': {
\        'hex': '#45b787',
\        'name': '蛙绿',
\        'pinyin': 'walv'
\    },
\    '蛛网灰': {
\        'hex': '#b7a091',
\        'name': '蛛网灰',
\        'pinyin': 'zhuwanghui'
\    },
\    '蜜黄': {
\        'hex': '#fbb957',
\        'name': '蜜黄',
\        'pinyin': 'mihuang'
\    },
\    '蜴蜊绿': {
\        'hex': '#835e1d',
\        'name': '蜴蜊绿',
\        'pinyin': 'yililv'
\    },
\    '蜻蜓红': {
\        'hex': '#f1441d',
\        'name': '蜻蜓红',
\        'pinyin': 'qingtinghong'
\    },
\    '蜻蜓蓝': {
\        'hex': '#3b818c',
\        'name': '蜻蜓蓝',
\        'pinyin': 'qingtinglan'
\    },
\    '蝶翅蓝': {
\        'hex': '#4e7ca1',
\        'name': '蝶翅蓝',
\        'pinyin': 'diechilan'
\    },
\    '蝶黄': {
\        'hex': '#e2d849',
\        'name': '蝶黄',
\        'pinyin': 'diehuang'
\    },
\    '螺甸紫': {
\        'hex': '#74759b',
\        'name': '螺甸紫',
\        'pinyin': 'luodianzi'
\    },
\    '蟹壳灰': {
\        'hex': '#695e45',
\        'name': '蟹壳灰',
\        'pinyin': 'xiekehui'
\    },
\    '蟹壳红': {
\        'hex': '#f27635',
\        'name': '蟹壳红',
\        'pinyin': 'xiekehong'
\    },
\    '蟹壳绿': {
\        'hex': '#513c20',
\        'name': '蟹壳绿',
\        'pinyin': 'xiekelv'
\    },
\    '蟹蝥红': {
\        'hex': '#b14b28',
\        'name': '蟹蝥红',
\        'pinyin': 'xiemaohong'
\    },
\    '蟾绿': {
\        'hex': '#3c9566',
\        'name': '蟾绿',
\        'pinyin': 'chanlv'
\    },
\    '覆盆子红': {
\        'hex': '#ac1f18',
\        'name': '覆盆子红',
\        'pinyin': 'fupenzihong'
\    },
\    '谷鞘红': {
\        'hex': '#f17666',
\        'name': '谷鞘红',
\        'pinyin': 'guqiaohong'
\    },
\    '谷黄': {
\        'hex': '#e8b004',
\        'name': '谷黄',
\        'pinyin': 'guhuang'
\    },
\    '豆汁黄': {
\        'hex': '#f8e8c1',
\        'name': '豆汁黄',
\        'pinyin': 'douzhihuang'
\    },
\    '豆沙': {
\        'hex': '#481e1c',
\        'name': '豆沙',
\        'pinyin': 'dousha'
\    },
\    '豆蔻紫': {
\        'hex': '#ad6598',
\        'name': '豆蔻紫',
\        'pinyin': 'doukouzi'
\    },
\    '豇豆红': {
\        'hex': '#ed9db2',
\        'name': '豇豆红',
\        'pinyin': 'jiangdouhong'
\    },
\    '象牙白': {
\        'hex': '#fffef8',
\        'name': '象牙白',
\        'pinyin': 'xiangyabai'
\    },
\    '象牙黄': {
\        'hex': '#f0d695',
\        'name': '象牙黄',
\        'pinyin': 'xiangyahuang'
\    },
\    '貂紫': {
\        'hex': '#5d3131',
\        'name': '貂紫',
\        'pinyin': 'diaozi'
\    },
\    '赭石': {
\        'hex': '#862617',
\        'name': '赭石',
\        'pinyin': 'zheshi'
\    },
\    '软木黄': {
\        'hex': '#de9e44',
\        'name': '软木黄',
\        'pinyin': 'ruanmuhuang'
\    },
\    '远天蓝': {
\        'hex': '#d0dfe6',
\        'name': '远天蓝',
\        'pinyin': 'yuantianlan'
\    },
\    '远山紫': {
\        'hex': '#ccccd6',
\        'name': '远山紫',
\        'pinyin': 'yuanshanzi'
\    },
\    '酢酱草红': {
\        'hex': '#c5708b',
\        'name': '酢酱草红',
\        'pinyin': 'cujiangcaohong'
\    },
\    '酪黄': {
\        'hex': '#f6dead',
\        'name': '酪黄',
\        'pinyin': 'laohuang'
\    },
\    '酱棕': {
\        'hex': '#5a1f1b',
\        'name': '酱棕',
\        'pinyin': 'jiangzong'
\    },
\    '酱紫': {
\        'hex': '#4d1018',
\        'name': '酱紫',
\        'pinyin': 'jiangzi'
\    },
\    '醉瓜肉': {
\        'hex': '#db8540',
\        'name': '醉瓜肉',
\        'pinyin': 'zuiguarou'
\    },
\    '釉蓝': {
\        'hex': '#1781b5',
\        'name': '釉蓝',
\        'pinyin': 'youlan'
\    },
\    '野菊紫': {
\        'hex': '#525288',
\        'name': '野菊紫',
\        'pinyin': 'yejuzi'
\    },
\    '野葡萄紫': {
\        'hex': '#302f4b',
\        'name': '野葡萄紫',
\        'pinyin': 'yeputaozi'
\    },
\    '野蔷薇红': {
\        'hex': '#fb9968',
\        'name': '野蔷薇红',
\        'pinyin': 'yeqiangweihong'
\    },
\    '金叶黄': {
\        'hex': '#ffa60f',
\        'name': '金叶黄',
\        'pinyin': 'jinyehuang'
\    },
\    '金瓜黄': {
\        'hex': '#fcd217',
\        'name': '金瓜黄',
\        'pinyin': 'jinguahuang'
\    },
\    '金盏黄': {
\        'hex': '#fcc307',
\        'name': '金盏黄',
\        'pinyin': 'jinzhanhuang'
\    },
\    '金莲花橙': {
\        'hex': '#f86b1d',
\        'name': '金莲花橙',
\        'pinyin': 'jinlianhuacheng'
\    },
\    '金莺黄': {
\        'hex': '#f4a83a',
\        'name': '金莺黄',
\        'pinyin': 'jinyinghuang'
\    },
\    '金驼': {
\        'hex': '#e46828',
\        'name': '金驼',
\        'pinyin': 'jintuo'
\    },
\    '金鱼紫': {
\        'hex': '#500a16',
\        'name': '金鱼紫',
\        'pinyin': 'jinyuzi'
\    },
\    '金黄': {
\        'hex': '#f26b1f',
\        'name': '金黄',
\        'pinyin': 'jinhuang'
\    },
\    '钢蓝': {
\        'hex': '#0f1423',
\        'name': '钢蓝',
\        'pinyin': 'ganglan'
\    },
\    '钢青': {
\        'hex': '#142334',
\        'name': '钢青',
\        'pinyin': 'gangqing'
\    },
\    '钴蓝': {
\        'hex': '#1a94bc',
\        'name': '钴蓝',
\        'pinyin': 'gulan'
\    },
\    '铁棕': {
\        'hex': '#d85916',
\        'name': '铁棕',
\        'pinyin': 'tiezong'
\    },
\    '铁水红': {
\        'hex': '#f5391c',
\        'name': '铁水红',
\        'pinyin': 'tieshuihong'
\    },
\    '铅灰': {
\        'hex': '#bbb5ac',
\        'name': '铅灰',
\        'pinyin': 'qianhui'
\    },
\    '铜绿': {
\        'hex': '#2bae85',
\        'name': '铜绿',
\        'pinyin': 'tonglv'
\    },
\    '银朱': {
\        'hex': '#f43e06',
\        'name': '银朱',
\        'pinyin': 'yinzhu'
\    },
\    '银灰': {
\        'hex': '#918072',
\        'name': '银灰',
\        'pinyin': 'yinhui'
\    },
\    '银白': {
\        'hex': '#f1f0ed',
\        'name': '银白',
\        'pinyin': 'yinbai'
\    },
\    '银鱼白': {
\        'hex': '#cdd1d3',
\        'name': '银鱼白',
\        'pinyin': 'yinyubai'
\    },
\    '银鼠灰': {
\        'hex': '#b5aa90',
\        'name': '银鼠灰',
\        'pinyin': 'yinshuhui'
\    },
\    '锌灰': {
\        'hex': '#7a7374',
\        'name': '锌灰',
\        'pinyin': 'xinhui'
\    },
\    '锦葵红': {
\        'hex': '#bf3553',
\        'name': '锦葵红',
\        'pinyin': 'jinkuihong'
\    },
\    '镍灰': {
\        'hex': '#9fa39a',
\        'name': '镍灰',
\        'pinyin': 'niehui'
\    },
\    '长石灰': {
\        'hex': '#363433',
\        'name': '长石灰',
\        'pinyin': 'changshihui'
\    },
\    '闪蓝': {
\        'hex': '#7cabb1',
\        'name': '闪蓝',
\        'pinyin': 'shanlan'
\    },
\    '陶瓷红': {
\        'hex': '#e16723',
\        'name': '陶瓷红',
\        'pinyin': 'taocihong'
\    },
\    '隐红灰': {
\        'hex': '#b598a1',
\        'name': '隐红灰',
\        'pinyin': 'yinhonghui'
\    },
\    '雁灰': {
\        'hex': '#80766e',
\        'name': '雁灰',
\        'pinyin': 'yanhui'
\    },
\    '雄黄': {
\        'hex': '#ff9900',
\        'name': '雄黄',
\        'pinyin': 'xionghuang'
\    },
\    '雅梨黄': {
\        'hex': '#fbc82f',
\        'name': '雅梨黄',
\        'pinyin': 'yalihuang'
\    },
\    '雪白': {
\        'hex': '#fffef9',
\        'name': '雪白',
\        'pinyin': 'xuebai'
\    },
\    '霁青': {
\        'hex': '#63bbd0',
\        'name': '霁青',
\        'pinyin': 'jiqing'
\    },
\    '霞光红': {
\        'hex': '#ef82a0',
\        'name': '霞光红',
\        'pinyin': 'xiaguanghong'
\    },
\    '青灰': {
\        'hex': '#2b333e',
\        'name': '青灰',
\        'pinyin': 'qinghui'
\    },
\    '青矾绿': {
\        'hex': '#2c9678',
\        'name': '青矾绿',
\        'pinyin': 'qingfanlv'
\    },
\    '青莲': {
\        'hex': '#8b2671',
\        'name': '青莲',
\        'pinyin': 'qinglian'
\    },
\    '青蛤壳紫': {
\        'hex': '#bc84a8',
\        'name': '青蛤壳紫',
\        'pinyin': 'qinghakezi'
\    },
\    '靛青': {
\        'hex': '#1661ab',
\        'name': '靛青',
\        'pinyin': 'dianqing'
\    },
\    '颊红': {
\        'hex': '#eeaa9c',
\        'name': '颊红',
\        'pinyin': 'jiahong'
\    },
\    '风帆黄': {
\        'hex': '#dc9123',
\        'name': '风帆黄',
\        'pinyin': 'fengfanhuang'
\    },
\    '飞泉绿': {
\        'hex': '#497568',
\        'name': '飞泉绿',
\        'pinyin': 'feiquanlv'
\    },
\    '飞燕草蓝': {
\        'hex': '#0f59a4',
\        'name': '飞燕草蓝',
\        'pinyin': 'feiyancaolan'
\    },
\    '香叶红': {
\        'hex': '#f07c82',
\        'name': '香叶红',
\        'pinyin': 'xiangyehong'
\    },
\    '香水玫瑰黄': {
\        'hex': '#f7da94',
\        'name': '香水玫瑰黄',
\        'pinyin': 'xiangshuimeiguihuang'
\    },
\    '香蕉黄': {
\        'hex': '#e4bf11',
\        'name': '香蕉黄',
\        'pinyin': 'xiangjiaohuang'
\    },
\    '马鞭草紫': {
\        'hex': '#ede3e7',
\        'name': '马鞭草紫',
\        'pinyin': 'mabiancaozi'
\    },
\    '驼色': {
\        'hex': '#66462a',
\        'name': '驼色',
\        'pinyin': 'tuose'
\    },
\    '高粱红': {
\        'hex': '#c02c38',
\        'name': '高粱红',
\        'pinyin': 'gaolianghong'
\    },
\    '魏紫': {
\        'hex': '#7e1671',
\        'name': '魏紫',
\        'pinyin': 'weizi'
\    },
\    '鱼尾灰': {
\        'hex': '#5e616d',
\        'name': '鱼尾灰',
\        'pinyin': 'yuweihui'
\    },
\    '鱼肚白': {
\        'hex': '#f7f4ed',
\        'name': '鱼肚白',
\        'pinyin': 'yudubai'
\    },
\    '鱼鳃红': {
\        'hex': '#ed3b2f',
\        'name': '鱼鳃红',
\        'pinyin': 'yusaihong'
\    },
\    '鲑鱼红': {
\        'hex': '#f09c5a',
\        'name': '鲑鱼红',
\        'pinyin': 'guiyuhong'
\    },
\    '鲛青': {
\        'hex': '#87723e',
\        'name': '鲛青',
\        'pinyin': 'jiaoqing'
\    },
\    '鲜绿': {
\        'hex': '#43b244',
\        'name': '鲜绿',
\        'pinyin': 'xianlv'
\    },
\    '鲸鱼灰': {
\        'hex': '#475164',
\        'name': '鲸鱼灰',
\        'pinyin': 'jingyuhui'
\    },
\    '鷃蓝': {
\        'hex': '#144a74',
\        'name': '鷃蓝',
\        'pinyin': 'yanlan'
\    },
\    '鸡蛋黄': {
\        'hex': '#fbb612',
\        'name': '鸡蛋黄',
\        'pinyin': 'jidanhuang'
\    },
\    '鸢尾蓝': {
\        'hex': '#158bb8',
\        'name': '鸢尾蓝',
\        'pinyin': 'yuanweilan'
\    },
\    '鸥蓝': {
\        'hex': '#c7d2d4',
\        'name': '鸥蓝',
\        'pinyin': 'oulan'
\    },
\    '鸽蓝': {
\        'hex': '#1c2938',
\        'name': '鸽蓝',
\        'pinyin': 'gelan'
\    },
\    '鹅冠红': {
\        'hex': '#d11a2d',
\        'name': '鹅冠红',
\        'pinyin': 'eguanhong'
\    },
\    '鹅掌黄': {
\        'hex': '#fbb929',
\        'name': '鹅掌黄',
\        'pinyin': 'ezhanghuang'
\    },
\    '鹅血石红': {
\        'hex': '#ab372f',
\        'name': '鹅血石红',
\        'pinyin': 'exueshihong'
\    },
\    '鹞冠紫': {
\        'hex': '#621d34',
\        'name': '鹞冠紫',
\        'pinyin': 'yaoguanzi'
\    },
\    '鹤灰': {
\        'hex': '#4a4035',
\        'name': '鹤灰',
\        'pinyin': 'hehui'
\    },
\    '鹤顶红': {
\        'hex': '#d42517',
\        'name': '鹤顶红',
\        'pinyin': 'hedinghong'
\    },
\    '鹦鹉冠黄': {
\        'hex': '#f6c430',
\        'name': '鹦鹉冠黄',
\        'pinyin': 'yingwuguanhuang'
\    },
\    '鹦鹉绿': {
\        'hex': '#5bae23',
\        'name': '鹦鹉绿',
\        'pinyin': 'yingwulv'
\    },
\    '鹿皮褐': {
\        'hex': '#d99156',
\        'name': '鹿皮褐',
\        'pinyin': 'lupihe'
\    },
\    '鹿角棕': {
\        'hex': '#e3bd8d',
\        'name': '鹿角棕',
\        'pinyin': 'lujiaozong'
\    },
\    '麂棕': {
\        'hex': '#de7622',
\        'name': '麂棕',
\        'pinyin': 'jizong'
\    },
\    '麦秆黄': {
\        'hex': '#f8df70',
\        'name': '麦秆黄',
\        'pinyin': 'maiganhuang'
\    },
\    '麦芽糖黄': {
\        'hex': '#f9d27d',
\        'name': '麦芽糖黄',
\        'pinyin': 'maiyatanghuang'
\    },
\    '麦苗绿': {
\        'hex': '#55bb8a',
\        'name': '麦苗绿',
\        'pinyin': 'maimiaolv'
\    },
\    '黄昏灰': {
\        'hex': '#474b4c',
\        'name': '黄昏灰',
\        'pinyin': 'huanghunhui'
\    },
\    '黄连黄': {
\        'hex': '#fcc515',
\        'name': '黄连黄',
\        'pinyin': 'huanglianhuang'
\    },
\    '鼠背灰': {
\        'hex': '#73575c',
\        'name': '鼠背灰',
\        'pinyin': 'shubeihui'
\    },
\    '鼠鼻红': {
\        'hex': '#e3b4b8',
\        'name': '鼠鼻红',
\        'pinyin': 'shubihong'
\    },
\    '鼬黄': {
\        'hex': '#fcb70a',
\        'name': '鼬黄',
\        'pinyin': 'youhuang'
\    },
\    '龙睛鱼紫': {
\        'hex': '#4e2a40',
\        'name': '龙睛鱼紫',
\        'pinyin': 'longjingyuzi'
\    },
\    '龙睛鱼红': {
\        'hex': '#ef632b',
\        'name': '龙睛鱼红',
\        'pinyin': 'longjingyuhong'
\    },
\    '龙葵紫': {
\        'hex': '#322f3b',
\        'name': '龙葵紫',
\        'pinyin': 'longkuizi'
\    },
\    '龙须红': {
\        'hex': '#cc5595',
\        'name': '龙须红',
\        'pinyin': 'longxuhong'
\    },
\    '龟背黄': {
\        'hex': '#826b48',
\        'name': '龟背黄',
\        'pinyin': 'guibeihuang'
\    }
\}


let g:color#colors = keys(color#hex_map)
let g:color#names = keys(color#name_map)
let g:color#pinyin = keys(color#pinyin_map)
