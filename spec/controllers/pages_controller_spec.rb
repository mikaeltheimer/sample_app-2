#!/bin/env ruby
# encoding: utf-8

require 'spec_helper'

describe PagesController do
  render_views

  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end
  end

  it "doit avoir le bon titre" do
    get 'home'
    response.should have_selector("title",
                      :content => "Simple App du Tutoriel Ruby on Rails | Accueil")
  end

  describe "GET 'contact'" do
    it "should be successful" do
      get 'contact'
      response.should be_success
    end
  end

  it "doit avoir le bon titre" do
    get 'contact'
    response.should have_selector("title",
                      :content => "Simple App du Tutoriel Ruby on Rails | Contact")
  end

    describe "GET 'about'" do
    it "should be successful" do
      get 'about'
      response.should be_success
    end
  end

  it "doit avoir le bon titre" do
    get 'about'
    response.should have_selector("title",
                      :content => "Simple App du Tutoriel Ruby on Rails | À Propos")
  end

end
