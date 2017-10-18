function Student(opts) {
    return {
        name: opts.name,
        last_name: opts.last_name,
        full_name: function () {
            return '' + this.name + ' ' + this.last_name;
        },
        email: opts.last_name,
        getHTML: function () {

        }
    }
}