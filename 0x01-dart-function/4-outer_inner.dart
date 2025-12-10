String inner(String name, String id) {
    var parts = name.split(' ');
    var firstName = parts[0];
    var lastName = parts[1];
    var initial = lastName[0];

    return 'Hello Agent $initial.$firstName your id is $id';
}

void outer(String name, String id) {
    print(inner(name, id));
}
