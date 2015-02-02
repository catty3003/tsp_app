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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150202173344) do

  create_table "anmdeldungs", force: true do |t|
    t.string   "identnummer"
    t.string   "amtliches_kennzeichen"
    t.string   "neues_kennzeichen"
    t.boolean  "fp"
    t.string   "fz_brief_nr"
    t.string   "saison_von"
    t.string   "saison_bis"
    t.string   "evb_nr"
    t.string   "kva_notiz"
    t.string   "tsp_notiz"
    t.boolean  "versand_art"
    t.integer  "kunde_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "kundenkontos", force: true do |t|
    t.string   "iban"
    t.string   "bic"
    t.string   "institut"
    t.integer  "kunde_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "kundes", force: true do |t|
    t.string   "gruppe"
    t.string   "anrede"
    t.string   "nachname"
    t.string   "vorname"
    t.date     "geburtsdatum"
    t.string   "geburtsort"
    t.string   "adresse"
    t.string   "plz"
    t.string   "stadt"
    t.string   "telefonnummer"
    t.boolean  "tsp_versicherungskunde"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rechnungs", force: true do |t|
    t.decimal  "kva"
    t.decimal  "service"
    t.decimal  "schilder"
    t.decimal  "sonstiges"
    t.decimal  "gesamt"
    t.decimal  "anzahlung"
    t.decimal  "rest"
    t.boolean  "bezahlstatus"
    t.string   "antragsstatus"
    t.boolean  "versand"
    t.integer  "anmdeldung_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "anrede"
    t.string   "nachname"
    t.string   "vorname"
    t.boolean  "admin"
    t.date     "geburtsdatum"
    t.string   "adresse"
    t.string   "plz"
    t.string   "stadt"
    t.string   "telefonnummer"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
