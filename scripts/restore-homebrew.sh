#!/bin/bash

failed_items=""
function install_package() {
echo EXECUTING: brew install $1 $2
brew install $1 $2
[ $? -ne 0 ] && $failed_items="$failed_items $1"  # package failed to install.
}
brew tap atombender/ktail
brew tap c-bata/kube-prompt
brew tap derailed/k9s
brew tap homebrew/bundle
brew tap homebrew/cask
brew tap homebrew/core
brew tap int128/kubelogin
brew tap puppetlabs/puppet
install_package adns ''
install_package autoconf ''
install_package automake ''
install_package bat ''
install_package cfssl ''
install_package coreutils ''
install_package diff-so-fancy ''
install_package faas-cli ''
install_package gcc ''
install_package gdbm ''
install_package gettext ''
install_package git ''
install_package gmp ''
install_package gnu-getopt ''
install_package gnupg ''
install_package gnutls ''
install_package go ''
install_package govc ''
install_package helm ''
install_package helm@2 ''
install_package helmfile ''
install_package isl ''
install_package jfrog-cli ''
install_package jfrog-cli-go ''
install_package jq ''
install_package k9s ''
install_package ktail ''
install_package kube-prompt ''
install_package kube-ps1 ''
install_package kubectx ''
install_package kubelogin ''
install_package kubernetes-cli ''
install_package libassuan ''
install_package libevent ''
install_package libffi ''
install_package libgcrypt ''
install_package libgpg-error ''
install_package libidn2 ''
install_package libksba ''
install_package libmpc ''
install_package libtasn1 ''
install_package libtool ''
install_package libunistring ''
install_package libusb ''
install_package libyaml ''
install_package make ''
install_package minikube ''
install_package mpfr ''
install_package mysql ''
install_package ncurses ''
install_package nettle ''
install_package nmap ''
install_package npth ''
install_package oniguruma ''
install_package openssl@1.1 ''
install_package p11-kit ''
install_package pcre ''
install_package pcre2 ''
install_package pinentry ''
install_package pkg-config ''
install_package protobuf ''
install_package protobuf@3.7 ''
install_package python ''
install_package python@3.8 ''
install_package readline ''
install_package sops ''
install_package sqlite ''
install_package sshuttle ''
install_package telnet ''
install_package terraform ''
install_package tmux ''
install_package tree ''
install_package unbound ''
install_package utf8proc ''
install_package wget ''
install_package xz ''
install_package yq ''
install_package zlib ''
install_package zsh ''
function install_cask_package() {
echo EXECUTING: brew cask install $1
brew cask install $1
[ $? -ne 0 ] && $failed_items="$failed_items $1"  # package failed to install.
}
install_cask_package google-cloud-sdk
install_cask_package lens
install_cask_package meld
install_cask_package pdk
install_cask_package pe-client-tools
install_cask_package postman
install_cask_package powershell
install_cask_package puppet-agent
install_cask_package vagrant
install_cask_package virtualbox
install_cask_package virtualbox-extension-pack
[ ! -z $failed_items ] && echo The following items were failed to install: && echo $failed_items
