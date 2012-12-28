# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121227155442) do

  create_table "chaines", :force => true do |t|
    t.string   "nom"
    t.integer  "numero"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "enregistrements", :force => true do |t|
    t.integer  "marge_avant"
    t.integer  "marge_apres"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.integer  "programme_id"
  end

  create_table "personnes", :force => true do |t|
    t.string   "nom"
    t.string   "prenom"
    t.string   "surnom"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.integer  "type_personne_id"
  end

  create_table "personnes_programmes", :id => false, :force => true do |t|
    t.integer "personne_id"
    t.integer "programme_id"
  end

  add_index "personnes_programmes", ["personne_id", "programme_id"], :name => "index_personnes_programmes_on_personne_id_and_programme_id"

  create_table "programmes", :force => true do |t|
    t.datetime "debut"
    t.datetime "fin"
    t.string   "libelle"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "chaine_id"
  end

  create_table "type_personnes", :force => true do |t|
    t.string   "libelle"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
