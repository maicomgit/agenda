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

ActiveRecord::Schema.define(:version => 20220316172843) do

  create_table "contatos", :force => true do |t|
    t.string   "nome"
    t.string   "email"
    t.integer  "usuario_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "telefones", :force => true do |t|
    t.string   "numero"
    t.boolean  "principal"
    t.integer  "contato_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "usuarios", :force => true do |t|
    t.string   "nome"
    t.string   "email"
    t.string   "login"
    t.string   "senha"
    t.string   "chave1"
    t.string   "chave2"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
