const possibleLocality = [
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
];

const getLocality = zipCode => {
    return possibleAddresses.filter(address => address.zipCode == zipCode);    
};

const getLocationRestriction = zipCode => {
    return possibleAddresses.filter(address => address.zipCode == zipCode);    
};

module.exports = {
    getLocality, getLocationRestriction
}