import {*} with "./graph.jac";
import {*} with "./walker.jac";
walker init {
    root {
        spawn here ++> node::faq_root;
        spawn here walker::ingest_faq(kb_file="tesla_faq.json");
        spawn here walker::ask;
    }
}