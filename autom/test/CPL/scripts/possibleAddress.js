const possibleAddresses = [
    {
        country: "Brasil",
        state: "Mato Grosso",
        city: { search: "Nova Canaã do Norte", select: "Nova Canaã do Norte (MT)" },
        street: "Avenida Brasil",
        number: "100",
        complement: " ",
        zipCode: "78515-000",
        district: " ",
        latitude: "-10,628960",
        longitude: "-55,714143"
    },
    {
        country: "Brasil",
        state: "Mato Grosso",
        city: { search: "Sinop", select: "Sinop (MT)" },
        street: "Avenida Rute de Souza Silva",
        number: "100",
        complement: " ",
        zipCode: "78557-000",
        district: "Jardim Terra Rica",
        latitude: "-11,882389",
        longitude: "-55,495481"
    },
    {
        country: "Brasil",
        state: "Mato Grosso",
        city: { search: "Colíder", select: "Colíder (MT)" },
        street: "Avenida Ipiranga",
        number: "100",
        complement: " ",
        zipCode: "78500-000",
        district: "Centro",
        latitude: "-10,803050",
        longitude: "-55,458487"
    },
    {
        country: "Brasil",
        state: "São Paulo",
        city: { search: "São Paulo", select: "São Paulo (SP)" },
        street: "Rua Flor de São Miguel",
        number: "100",
        complement: " ",
        zipCode: "08061-020",
        district: "Jardim Pedro José Nunes",
        latitude: "-23,501906",
        longitude: "-46,465614"
    },
    {
        country: "Brasil",
        state: "São Paulo",
        city: { search: "São Paulo", select: "São Paulo (SP)" },
        street: "Rua Itaxama",
        number: "100",
        complement: " ",
        zipCode: "05132-090",
        district: "Vila Mangalot",
        latitude: "-23,505681",
        longitude: "-46,744920"
    },
    {
        country: "Brasil",
        state: "Rio Grande do Sul",
        city: { search: "Porto Alegre", select: "Porto Alegre (RS)" },
        street: "Rua 7 de Setembro",
        number: "100",
        complement: " ",
        zipCode: "90010-191",
        district: "Centro Histórico",
        latitude: "-30,029136",
        longitude: "-51,230011"
    },
    {
        country: "Brasil",
        state: "Rondônia",
        city: { search: "Porto Velho", select: "Porto Velho (RO)" },
        street: "Avenida Rio Madeira",
        number: "100",
        complement: " ",
        zipCode: "76820-408",
        district: "Agenor M. de Carvalho",
        latitude: "-8,736575",
        longitude: "-63,878760"
    },
    {
        country: "Brasil",
        state: "São Paulo",
        city: { search: "São Paulo", select: "São Paulo (SP)" },
        street: "Avenida Engenheiro Luís Carlos Berrini",
        number: "100",
        complement: " ",
        zipCode: "04571-011",
        district: "Itaim Bibi",
        latitude: "-23,610932",
        longitude: "-46,694757"
    },
    {
        country: "Brasil",
        state: "São Paulo",
        city: { search: "São Paulo", select: "São Paulo (SP)" },
        street: "Rua Hussain Youssef Saab",
        number: "100",
        complement: " ",
        zipCode: "04685-002",
        district: "Vila Sofia",
        latitude: "-23,661850",
        longitude: "-46,693103"
    },
    {
        country: "Brasil",
        state: "São Paulo",
        city: { search: "São Paulo", select: "São Paulo (SP)" },
        street: "Rua Costa Carvalho",
        number: "100",
        complement: " ",
        zipCode: "05429-000",
        district: "Pinheiros",
        latitude: "-23,562137",
        longitude: "-46,699169"
    },
    {
        country: "Brasil",
        state: "Mato Grosso",
        city: { search: "Sinop", select: "Sinop (MT)" },
        street: "Rua Valentin Dalastra",
        number: "100",
        complement: " ",
        zipCode: "78557-518",
        district: "Setor Industrial",
        latitude: "-11,867125",
        longitude: "-55,493064"
    },
    {
        country: "Brasil",
        state: "São Paulo",
        city: { search: "São Paulo", select: "São Paulo (SP)" },
        street: "Rua Hussain Youssef Saab       ",
        number: "100",
        complement: " ",
        zipCode: "04671-215",
        district: "Vila Sofia",
        latitude: "-23,661850",
        longitude: "-46,693103"
    },
    {
        country: "Brasil",
        state: "São Paulo",
        city: { search: "Guarulhos", select: "Guarulhos (SP)" },
        street: "Rua José Batista do Rêgo",
        number: "100",
        complement: " ",
        zipCode: "07115-375",
        district: "Parque Renato Maia",
        latitude: "-23,449936",
        longitude: "-46,534110"
    },
    {
        country: "Brasil",
        state: "São Paulo",
        city: { search: "São Paulo", select: "São Paulo (SP)" },
        street: "Avenida Senador José Ermírio de Moraes",
        number: "100",
        complement: " ",
        zipCode: "02357-002",
        district: "Tremembé",
        latitude: "-23,448668",
        longitude: "-46,614932"
    },
    {
        country: "Brasil",
        state: "São Paulo",
        city: { search: "Osasco", select: "Osasco (SP)" },
        street: "Rua Américo Vespúcio",
        number: "430",
        complement: " ",
        zipCode: "06273-070",
        district: "Vila Menck",
        latitude: "-23,498079",
        longitude: "-46,766040"
    },
    {
        country: "Brasil",
        state: "Rio Grande do Sul",
        city: { search: "Porto Alegre", select: "Porto Alegre (RS)" },
        street: "Rua Portugal",
        number: "100",
        complement: " ",
        zipCode: "90520-310",
        district: "Higienópolis",
        latitude: "-30,015461",
        longitude: "-51,183350"
    },
    {
        country: "México",
        state: "Guanajuato",
        city: { search: "Moroleón", select: "Moroleón (GTO)" },
        street: "Avenida Morelos",
        number: "100",
        complement: " ",
        zipCode: "38800",
        district: "Zona Centro",
        latitude: "20,129221",
        longitude: "-101,191358"
    },
    {
        country: "México",
        state: "Tamaulipas",
        city: { search: "Reynosa", select: "Reynosa (TMS)" },
        street: "Calle Occidental",
        number: "100",
        complement: " ",
        zipCode: "88520",
        district: "Longoria",
        latitude: "26,076467",
        longitude: "-98,290911"
    }
];

const getAddress = zipCode => {
    return possibleAddresses.filter(address => address.zipCode == zipCode);
};

module.exports = {
    getAddress
}