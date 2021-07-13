#!/usr/bin/perl

use strict;
use warnings;
use Test::More tests => 543;

BEGIN {
use_ok('Net::DRI');
use_ok('Net::DRI::BaseClass');
use_ok('Net::DRI::Cache');
use_ok('Net::DRI::Data::Changes');
use_ok('Net::DRI::Data::Contact');
use_ok('Net::DRI::Data::Contact::AERO');
use_ok('Net::DRI::Data::Contact::AFNIC');
use_ok('Net::DRI::Data::Contact::ARNES');
use_ok('Net::DRI::Data::Contact::AT');
use_ok('Net::DRI::Data::Contact::BE');
use_ok('Net::DRI::Data::Contact::BR');
use_ok('Net::DRI::Data::Contact::CAT');
use_ok('Net::DRI::Data::Contact::CIRA');
use_ok('Net::DRI::Data::Contact::CN');
use_ok('Net::DRI::Data::Contact::CNNIC');
use_ok('Net::DRI::Data::Contact::COOP');
use_ok('Net::DRI::Data::Contact::DENIC');
use_ok('Net::DRI::Data::Contact::DK');
use_ok('Net::DRI::Data::Contact::ES');
use_ok('Net::DRI::Data::Contact::EURid');
use_ok('Net::DRI::Data::Contact::FCCN');
use_ok('Net::DRI::Data::Contact::FICORA');
use_ok('Net::DRI::Data::Contact::FRED');
use_ok('Net::DRI::Data::Contact::IIS');
use_ok('Net::DRI::Data::Contact::IT');
use_ok('Net::DRI::Data::Contact::JOBS');
use_ok('Net::DRI::Data::Contact::LU');
use_ok('Net::DRI::Data::Contact::LV');
use_ok('Net::DRI::Data::Contact::NominetMMX');
use_ok('Net::DRI::Data::Contact::Neustar');
use_ok('Net::DRI::Data::Contact::NO');
use_ok('Net::DRI::Data::Contact::Nominet');
use_ok('Net::DRI::Data::Contact::NZ');
use_ok('Net::DRI::Data::Contact::OpenSRS');
use_ok('Net::DRI::Data::Contact::PL');
use_ok('Net::DRI::Data::Contact::RegBox');
use_ok('Net::DRI::Data::Contact::RO');
use_ok('Net::DRI::Data::Contact::SE');
use_ok('Net::DRI::Data::ContactSet');
use_ok('Net::DRI::Data::Contact::SIDN');
use_ok('Net::DRI::Data::Contact::SKNIC');
use_ok('Net::DRI::Data::Contact::SWITCH');
use_ok('Net::DRI::Data::Contact::TANGO');
use_ok('Net::DRI::Data::Contact::TCI');
use_ok('Net::DRI::Data::Contact::TCI_gTLD');
use_ok('Net::DRI::Data::Contact::UniRegistry');
use_ok('Net::DRI::Data::Contact::ZACR');
use_ok('Net::DRI::Data::Hosts');
use_ok('Net::DRI::Data::IDN');
use_ok('Net::DRI::Data::LanguageTag');
use_ok('Net::DRI::Data::Raw');
use_ok('Net::DRI::Data::RegistryObject');
use_ok('Net::DRI::Data::StatusList');
use_ok('Net::DRI::DRD');
use_ok('Net::DRI::DRD::AdamsNames');
use_ok('Net::DRI::DRD::Afilias::Afilias');
use_ok('Net::DRI::DRD::Afilias::PIR');
use_ok('Net::DRI::DRD::Afilias::Shared');
use_ok('Net::DRI::DRD::AFNIC::AFNIC');
use_ok('Net::DRI::DRD::AFNIC::GTLD');
use_ok('Net::DRI::DRD::ARNES');
use_ok('Net::DRI::DRD::auDA');
use_ok('Net::DRI::DRD::BookMyName');
use_ok('Net::DRI::DRD::CentralNic::CentralNic');
use_ok('Net::DRI::DRD::CentralNic::SKNIC');
use_ok('Net::DRI::DRD::CGIBR::BR');
use_ok('Net::DRI::DRD::CGIBR::GTLD');
use_ok('Net::DRI::DRD::CIRA::CA');
use_ok('Net::DRI::DRD::CIRA::Fury');
use_ok('Net::DRI::DRD::CNNIC::CN');
use_ok('Net::DRI::DRD::CNNIC::GTLD');
use_ok('Net::DRI::DRD::CoCCA::CoCCA');
use_ok('Net::DRI::DRD::CoCCA::GTLD');
use_ok('Net::DRI::DRD::CoCCA::PH');
use_ok('Net::DRI::DRD::CRR');
use_ok('Net::DRI::DRD::Deloitte');
use_ok('Net::DRI::DRD::DENIC');
use_ok('Net::DRI::DRD::DKHostmaster');
use_ok('Net::DRI::DRD::DNSBelgium::BE');
use_ok('Net::DRI::DRD::DNSBelgium::GTLD');
use_ok('Net::DRI::DRD::DNSPT');
use_ok('Net::DRI::DRD::Domicilium');
use_ok('Net::DRI::DRD::Donuts');
use_ok('Net::DRI::DRD::DotCooperation');
use_ok('Net::DRI::DRD::ECOMLAC');
use_ok('Net::DRI::DRD::EURid');
use_ok('Net::DRI::DRD::FRED');
use_ok('Net::DRI::DRD::GDI');
use_ok('Net::DRI::DRD::GMORegistry::BRRegistry');
use_ok('Net::DRI::DRD::GMORegistry::GMORegistry');
use_ok('Net::DRI::DRD::GMORegistry::KYOTO');
use_ok('Net::DRI::DRD::GMORegistry::PANDI');
use_ok('Net::DRI::DRD::GMORegistry::SHOP');
use_ok('Net::DRI::DRD::HostmasterUA');
use_ok('Net::DRI::DRD::ICANN');
use_ok('Net::DRI::DRD::IENUMAT');
use_ok('Net::DRI::DRD::IIS');
use_ok('Net::DRI::DRD::IITCNR');
use_ok('Net::DRI::DRD::InternetNZ');
use_ok('Net::DRI::DRD::IRegistry');
use_ok('Net::DRI::DRD::ISPAPI');
use_ok('Net::DRI::DRD::KNET');
use_ok('Net::DRI::DRD::LVRegistry');
use_ok('Net::DRI::DRD::NASK');
use_ok('Net::DRI::DRD::Neustar::IN');
use_ok('Net::DRI::DRD::Neustar::Narwhal');
use_ok('Net::DRI::DRD::Neustar::TWNIC');
use_ok('Net::DRI::DRD::NGTLD');
use_ok('Net::DRI::DRD::NicAT::AT');
use_ok('Net::DRI::DRD::NicAT::RegBox');
use_ok('Net::DRI::DRD::NICChile');
use_ok('Net::DRI::DRD::NICEC');
use_ok('Net::DRI::DRD::NICMexico');
use_ok('Net::DRI::DRD::NICRO');
use_ok('Net::DRI::DRD::Nominet::Amazon');
use_ok('Net::DRI::DRD::Nominet::GTLD');
use_ok('Net::DRI::DRD::Nominet::MMX');
use_ok('Net::DRI::DRD::Nominet::UK');
use_ok('Net::DRI::DRD::NORID');
use_ok('Net::DRI::DRD::OpenSRS');
use_ok('Net::DRI::DRD::OVH');
use_ok('Net::DRI::DRD::puntCAT');
use_ok('Net::DRI::DRD::RedES');
use_ok('Net::DRI::DRD::RESTENA');
use_ok('Net::DRI::DRD::SIDN::GTLD');
use_ok('Net::DRI::DRD::SIDN::NL');
use_ok('Net::DRI::DRD::SITA');
use_ok('Net::DRI::DRD::SWITCH');
use_ok('Net::DRI::DRD::TangoRS::CORE');
use_ok('Net::DRI::DRD::TangoRS::TangoRS');
use_ok('Net::DRI::DRD::TCI::GTLD');
use_ok('Net::DRI::DRD::TCI::MSKIX');
use_ok('Net::DRI::DRD::TCI::RF');
use_ok('Net::DRI::DRD::TCI::RU');
use_ok('Net::DRI::DRD::TCI::SU');
use_ok('Net::DRI::DRD::TCI::TCI');
use_ok('Net::DRI::DRD::TeleInfo');
use_ok('Net::DRI::DRD::TELEGreenland');
use_ok('Net::DRI::DRD::TMDB');
use_ok('Net::DRI::DRD::TRA::AE');
use_ok('Net::DRI::DRD::TRA::BH');
use_ok('Net::DRI::DRD::UniRegistry::COOP');
use_ok('Net::DRI::DRD::UniRegistry::DM');
use_ok('Net::DRI::DRD::UniRegistry::EPS');
use_ok('Net::DRI::DRD::UniRegistry::ICM');
use_ok('Net::DRI::DRD::UniRegistry::UniRegistry');
use_ok('Net::DRI::DRD::UPU');
use_ok('Net::DRI::DRD::VeriSign::COM_NET');
use_ok('Net::DRI::DRD::VeriSign::NameStore');
use_ok('Net::DRI::DRD::VeriSign::VeriSign');
use_ok('Net::DRI::DRD::ZACR');
use_ok('Net::DRI::Exception');
use_ok('Net::DRI::Logging');
use_ok('Net::DRI::Logging::Files');
use_ok('Net::DRI::Logging::Null');
use_ok('Net::DRI::Logging::Stderr');
use_ok('Net::DRI::Logging::Syslog');
use_ok('Net::DRI::Protocol');
use_ok('Net::DRI::Protocol::AdamsNames::WS');
use_ok('Net::DRI::Protocol::AdamsNames::WS::Connection');
use_ok('Net::DRI::Protocol::AdamsNames::WS::Domain');
use_ok('Net::DRI::Protocol::AdamsNames::WS::Message');
use_ok('Net::DRI::Protocol::AFNIC::WS');
use_ok('Net::DRI::Protocol::AFNIC::WS::Domain');
use_ok('Net::DRI::Protocol::AFNIC::WS::Message');
use_ok('Net::DRI::Protocol::BookMyName::WS');
use_ok('Net::DRI::Protocol::BookMyName::WS::Account');
use_ok('Net::DRI::Protocol::BookMyName::WS::Domain');
use_ok('Net::DRI::Protocol::BookMyName::WS::Message');
use_ok('Net::DRI::Protocol::DAS');
use_ok('Net::DRI::Protocol::DAS::AdamsNames');
use_ok('Net::DRI::Protocol::DAS::AdamsNames::Connection');
use_ok('Net::DRI::Protocol::DAS::AdamsNames::Domain');
use_ok('Net::DRI::Protocol::DAS::AdamsNames::Message');
use_ok('Net::DRI::Protocol::DAS::AU');
use_ok('Net::DRI::Protocol::DAS::AU::Connection');
use_ok('Net::DRI::Protocol::DAS::AU::Domain');
use_ok('Net::DRI::Protocol::DAS::AU::Message');
use_ok('Net::DRI::Protocol::DAS::Connection');
use_ok('Net::DRI::Protocol::DAS::Domain');
use_ok('Net::DRI::Protocol::DAS::Message');
use_ok('Net::DRI::Protocol::DAS::SIDN');
use_ok('Net::DRI::Protocol::DAS::SIDN::Connection');
use_ok('Net::DRI::Protocol::DAS::SIDN::Domain');
use_ok('Net::DRI::Protocol::DAS::SIDN::Message');
use_ok('Net::DRI::Protocol::EPP');
use_ok('Net::DRI::Protocol::EPP::Connection');
use_ok('Net::DRI::Protocol::EPP::Core::Contact');
use_ok('Net::DRI::Protocol::EPP::Core::Domain');
use_ok('Net::DRI::Protocol::EPP::Core::Host');
use_ok('Net::DRI::Protocol::EPP::Core::RegistryMessage');
use_ok('Net::DRI::Protocol::EPP::Core::Session');
use_ok('Net::DRI::Protocol::EPP::Core::Status');
use_ok('Net::DRI::Protocol::EPP::Extensions::AERO');
use_ok('Net::DRI::Protocol::EPP::Extensions::AERO::Contact');
use_ok('Net::DRI::Protocol::EPP::Extensions::AERO::Domain');
use_ok('Net::DRI::Protocol::EPP::Extensions::Afilias');
use_ok('Net::DRI::Protocol::EPP::Extensions::Afilias::Association');
use_ok('Net::DRI::Protocol::EPP::Extensions::Afilias::AV');
use_ok('Net::DRI::Protocol::EPP::Extensions::Afilias::IDNLanguage');
use_ok('Net::DRI::Protocol::EPP::Extensions::Afilias::IPR');
use_ok('Net::DRI::Protocol::EPP::Extensions::Afilias::JSONMessage');
use_ok('Net::DRI::Protocol::EPP::Extensions::Afilias::MaintainerUrl');
use_ok('Net::DRI::Protocol::EPP::Extensions::Afilias::Message');
use_ok('Net::DRI::Protocol::EPP::Extensions::Afilias::Mobi');
use_ok('Net::DRI::Protocol::EPP::Extensions::Afilias::Price');
use_ok('Net::DRI::Protocol::EPP::Extensions::Afilias::Registrar');
use_ok('Net::DRI::Protocol::EPP::Extensions::Afilias::Restore');
use_ok('Net::DRI::Protocol::EPP::Extensions::Afilias::RPro');
use_ok('Net::DRI::Protocol::EPP::Extensions::AfiliasSRS');
use_ok('Net::DRI::Protocol::EPP::Extensions::Afilias::Trademark');
use_ok('Net::DRI::Protocol::EPP::Extensions::Afilias::Validation');
use_ok('Net::DRI::Protocol::EPP::Extensions::AFNIC');
use_ok('Net::DRI::Protocol::EPP::Extensions::AFNIC::Contact');
use_ok('Net::DRI::Protocol::EPP::Extensions::AFNIC::Domain');
use_ok('Net::DRI::Protocol::EPP::Extensions::AFNIC::Notifications');
use_ok('Net::DRI::Protocol::EPP::Extensions::AFNIC::PremiumDomain');
use_ok('Net::DRI::Protocol::EPP::Extensions::AFNIC::RegistryMessage');
use_ok('Net::DRI::Protocol::EPP::Extensions::AFNIC::Session');
use_ok('Net::DRI::Protocol::EPP::Extensions::AFNIC::Status');
use_ok('Net::DRI::Protocol::EPP::Extensions::AllocationToken');
use_ok('Net::DRI::Protocol::EPP::Extensions::ARI');
use_ok('Net::DRI::Protocol::EPP::Extensions::ARI::Block');
use_ok('Net::DRI::Protocol::EPP::Extensions::ARI::ExAvail');
use_ok('Net::DRI::Protocol::EPP::Extensions::ARI::IDNVariant');
use_ok('Net::DRI::Protocol::EPP::Extensions::ARI::KeyValue');
use_ok('Net::DRI::Protocol::EPP::Extensions::ARI::Price');
use_ok('Net::DRI::Protocol::EPP::Extensions::ARI::TMCHApplication');
use_ok('Net::DRI::Protocol::EPP::Extensions::ARNES');
use_ok('Net::DRI::Protocol::EPP::Extensions::ARNES::Contact');
use_ok('Net::DRI::Protocol::EPP::Extensions::ARNES::Domain');
use_ok('Net::DRI::Protocol::EPP::Extensions::ARNES::Status');
use_ok('Net::DRI::Protocol::EPP::Extensions::AT');
use_ok('Net::DRI::Protocol::EPP::Extensions::AT::ATResult');
use_ok('Net::DRI::Protocol::EPP::Extensions::AT::Contact');
use_ok('Net::DRI::Protocol::EPP::Extensions::AT::Domain');
use_ok('Net::DRI::Protocol::EPP::Extensions::AT::IOptions');
use_ok('Net::DRI::Protocol::EPP::Extensions::AT::Message');
use_ok('Net::DRI::Protocol::EPP::Extensions::AT::Result');
use_ok('Net::DRI::Protocol::EPP::Extensions::AU');
use_ok('Net::DRI::Protocol::EPP::Extensions::AU::Domain');
use_ok('Net::DRI::Protocol::EPP::Extensions::AusRegistry::IDN');
use_ok('Net::DRI::Protocol::EPP::Extensions::AusRegistry::KeyValue');
use_ok('Net::DRI::Protocol::EPP::Extensions::AusRegistry::Price');
use_ok('Net::DRI::Protocol::EPP::Extensions::AusRegistry::Sync');
use_ok('Net::DRI::Protocol::EPP::Extensions::AusRegistry::Variant');
use_ok('Net::DRI::Protocol::EPP::Extensions::BR');
use_ok('Net::DRI::Protocol::EPP::Extensions::BR::Contact');
use_ok('Net::DRI::Protocol::EPP::Extensions::BR::Domain');
use_ok('Net::DRI::Protocol::EPP::Extensions::CAT');
use_ok('Net::DRI::Protocol::EPP::Extensions::CAT::Contact');
use_ok('Net::DRI::Protocol::EPP::Extensions::CAT::DefensiveRegistration');
use_ok('Net::DRI::Protocol::EPP::Extensions::CAT::Domain');
use_ok('Net::DRI::Protocol::EPP::Extensions::CentralNic');
use_ok('Net::DRI::Protocol::EPP::Extensions::CentralNic::AuxContact');
use_ok('Net::DRI::Protocol::EPP::Extensions::CentralNic::Fee');
use_ok('Net::DRI::Protocol::EPP::Extensions::CentralNic::RegType');
use_ok('Net::DRI::Protocol::EPP::Extensions::CentralNic::SkContactIdent');
use_ok('Net::DRI::Protocol::EPP::Extensions::ChangePoll');
use_ok('Net::DRI::Protocol::EPP::Extensions::CIRA');
use_ok('Net::DRI::Protocol::EPP::Extensions::CIRA::Agreement');
use_ok('Net::DRI::Protocol::EPP::Extensions::CIRA::Contact');
use_ok('Net::DRI::Protocol::EPP::Extensions::CIRA::Domain');
use_ok('Net::DRI::Protocol::EPP::Extensions::CIRA::IDN');
use_ok('Net::DRI::Protocol::EPP::Extensions::CIRA::Notifications');
use_ok('Net::DRI::Protocol::EPP::Extensions::CL');
use_ok('Net::DRI::Protocol::EPP::Extensions::CL::Message');
use_ok('Net::DRI::Protocol::EPP::Extensions::CloudRegistry');
use_ok('Net::DRI::Protocol::EPP::Extensions::CloudRegistry::LaunchPhase');
use_ok('Net::DRI::Protocol::EPP::Extensions::CN');
use_ok('Net::DRI::Protocol::EPP::Extensions::CNNIC');
use_ok('Net::DRI::Protocol::EPP::Extensions::CNNIC::Bundling');
use_ok('Net::DRI::Protocol::EPP::Extensions::CNNIC::CDN');
use_ok('Net::DRI::Protocol::EPP::Extensions::CNNIC::CNContact');
use_ok('Net::DRI::Protocol::EPP::Extensions::CNNIC::Contact');
use_ok('Net::DRI::Protocol::EPP::Extensions::CNNIC::Domain');
use_ok('Net::DRI::Protocol::EPP::Extensions::CNNIC::Host');
use_ok('Net::DRI::Protocol::EPP::Extensions::CNNIC::Registry');
use_ok('Net::DRI::Protocol::EPP::Extensions::CoCCA');
use_ok('Net::DRI::Protocol::EPP::Extensions::CoCCA::IPVerification');
use_ok('Net::DRI::Protocol::EPP::Extensions::CoCCA::Notifications');
use_ok('Net::DRI::Protocol::EPP::Extensions::ContactVerification');
use_ok('Net::DRI::Protocol::EPP::Extensions::COOP');
use_ok('Net::DRI::Protocol::EPP::Extensions::COOP::Contact');
use_ok('Net::DRI::Protocol::EPP::Extensions::CORE');
use_ok('Net::DRI::Protocol::EPP::Extensions::DK');
use_ok('Net::DRI::Protocol::EPP::Extensions::DK::Contact');
use_ok('Net::DRI::Protocol::EPP::Extensions::DK::Domain');
use_ok('Net::DRI::Protocol::EPP::Extensions::DK::Host');
use_ok('Net::DRI::Protocol::EPP::Extensions::DNSBE');
use_ok('Net::DRI::Protocol::EPP::Extensions::DNSBE::Contact');
use_ok('Net::DRI::Protocol::EPP::Extensions::DNSBE::Domain');
use_ok('Net::DRI::Protocol::EPP::Extensions::DNSBE::Message');
use_ok('Net::DRI::Protocol::EPP::Extensions::DNSBE::Notifications');
use_ok('Net::DRI::Protocol::EPP::Extensions::DomainVerification');
use_ok('Net::DRI::Protocol::EPP::Extensions::E164');
use_ok('Net::DRI::Protocol::EPP::Extensions::E164Validation');
use_ok('Net::DRI::Protocol::EPP::Extensions::E164Validation::RFC5076');
use_ok('Net::DRI::Protocol::EPP::Extensions::ECOMLAC');
use_ok('Net::DRI::Protocol::EPP::Extensions::ES');
use_ok('Net::DRI::Protocol::EPP::Extensions::ES::Contact');
use_ok('Net::DRI::Protocol::EPP::Extensions::ES::Domain');
use_ok('Net::DRI::Protocol::EPP::Extensions::ES::Session');
use_ok('Net::DRI::Protocol::EPP::Extensions::ES::Tray');
use_ok('Net::DRI::Protocol::EPP::Extensions::EURid');
use_ok('Net::DRI::Protocol::EPP::Extensions::EURid::Contact');
use_ok('Net::DRI::Protocol::EPP::Extensions::EURid::Domain');
use_ok('Net::DRI::Protocol::EPP::Extensions::EURid::DNSQuality');
use_ok('Net::DRI::Protocol::EPP::Extensions::EURid::DNSSECEligibility');
use_ok('Net::DRI::Protocol::EPP::Extensions::EURid::IDN');
use_ok('Net::DRI::Protocol::EPP::Extensions::EURid::Notifications');
use_ok('Net::DRI::Protocol::EPP::Extensions::EURid::Registrar');
use_ok('Net::DRI::Protocol::EPP::Extensions::EURid::Sunrise');
use_ok('Net::DRI::Protocol::EPP::Extensions::FCCN');
use_ok('Net::DRI::Protocol::EPP::Extensions::FCCN::Contact');
use_ok('Net::DRI::Protocol::EPP::Extensions::FCCN::Domain');
use_ok('Net::DRI::Protocol::EPP::Extensions::FICORA');
use_ok('Net::DRI::Protocol::EPP::Extensions::FICORA::Balance');
use_ok('Net::DRI::Protocol::EPP::Extensions::FICORA::Contact');
use_ok('Net::DRI::Protocol::EPP::Extensions::FICORA::Domain');
use_ok('Net::DRI::Protocol::EPP::Extensions::FICORA::Message');
use_ok('Net::DRI::Protocol::EPP::Extensions::Fee');
use_ok('Net::DRI::Protocol::EPP::Extensions::FRED');
use_ok('Net::DRI::Protocol::EPP::Extensions::FRED::Contact');
use_ok('Net::DRI::Protocol::EPP::Extensions::FRED::Domain');
use_ok('Net::DRI::Protocol::EPP::Extensions::FRED::KeySET');
use_ok('Net::DRI::Protocol::EPP::Extensions::FRED::Message');
use_ok('Net::DRI::Protocol::EPP::Extensions::FRED::NSSET');
use_ok('Net::DRI::Protocol::EPP::Extensions::GL');
use_ok('Net::DRI::Protocol::EPP::Extensions::GracePeriod');
use_ok('Net::DRI::Protocol::EPP::Extensions::HTTP');
use_ok('Net::DRI::Protocol::EPP::Extensions::ICANN::MarkSignedMark');
use_ok('Net::DRI::Protocol::EPP::Extensions::ICANN::RegistrarExpirationDate');
use_ok('Net::DRI::Protocol::EPP::Extensions::IDN');
use_ok('Net::DRI::Protocol::EPP::Extensions::IENUMAT');
use_ok('Net::DRI::Protocol::EPP::Extensions::IIS');
use_ok('Net::DRI::Protocol::EPP::Extensions::IIS::Extensions');
use_ok('Net::DRI::Protocol::EPP::Extensions::IRegistry');
use_ok('Net::DRI::Protocol::EPP::Extensions::ISPAPI');
use_ok('Net::DRI::Protocol::EPP::Extensions::ISPAPI::KeyValue');
use_ok('Net::DRI::Protocol::EPP::Extensions::IT');
use_ok('Net::DRI::Protocol::EPP::Extensions::IT::Contact');
use_ok('Net::DRI::Protocol::EPP::Extensions::IT::Domain');
use_ok('Net::DRI::Protocol::EPP::Extensions::IT::Message');
use_ok('Net::DRI::Protocol::EPP::Extensions::IT::Notifications');
use_ok('Net::DRI::Protocol::EPP::Extensions::IT::SecDNS');
use_ok('Net::DRI::Protocol::EPP::Extensions::Keygroup');
use_ok('Net::DRI::Protocol::EPP::Extensions::KeyRelay');
use_ok('Net::DRI::Protocol::EPP::Extensions::LaunchPhase');
use_ok('Net::DRI::Protocol::EPP::Extensions::LU');
use_ok('Net::DRI::Protocol::EPP::Extensions::LU::Contact');
use_ok('Net::DRI::Protocol::EPP::Extensions::LU::Domain');
use_ok('Net::DRI::Protocol::EPP::Extensions::LU::Poll');
use_ok('Net::DRI::Protocol::EPP::Extensions::LU::Status');
use_ok('Net::DRI::Protocol::EPP::Extensions::LV');
use_ok('Net::DRI::Protocol::EPP::Extensions::LV::Contact');
use_ok('Net::DRI::Protocol::EPP::Extensions::LV::Domain');
use_ok('Net::DRI::Protocol::EPP::Extensions::ME');
use_ok('Net::DRI::Protocol::EPP::Extensions::MSKIX');
use_ok('Net::DRI::Protocol::EPP::Extensions::MX');
use_ok('Net::DRI::Protocol::EPP::Extensions::MX::AdmStatus');
use_ok('Net::DRI::Protocol::EPP::Extensions::MX::Domain');
use_ok('Net::DRI::Protocol::EPP::Extensions::MX::IDN');
use_ok('Net::DRI::Protocol::EPP::Extensions::MX::Message');
use_ok('Net::DRI::Protocol::EPP::Extensions::MX::Rar');
use_ok('Net::DRI::Protocol::EPP::Extensions::NeuLevel::CO');
use_ok('Net::DRI::Protocol::EPP::Extensions::NeuLevel::EXTContact');
use_ok('Net::DRI::Protocol::EPP::Extensions::NeuLevel::Fee');
use_ok('Net::DRI::Protocol::EPP::Extensions::NeuLevel::IDNLanguage');
use_ok('Net::DRI::Protocol::EPP::Extensions::NeuLevel::Message');
use_ok('Net::DRI::Protocol::EPP::Extensions::NeuLevel::WhoisType');
use_ok('Net::DRI::Protocol::EPP::Extensions::Neustar');
use_ok('Net::DRI::Protocol::EPP::Extensions::NEWGTLD');
use_ok('Net::DRI::Protocol::EPP::Extensions::NO');
use_ok('Net::DRI::Protocol::EPP::Extensions::NO::Contact');
use_ok('Net::DRI::Protocol::EPP::Extensions::NO::Domain');
use_ok('Net::DRI::Protocol::EPP::Extensions::NO::Host');
use_ok('Net::DRI::Protocol::EPP::Extensions::NO::Message');
use_ok('Net::DRI::Protocol::EPP::Extensions::Nominet');
use_ok('Net::DRI::Protocol::EPP::Extensions::Nominet::Contact');
use_ok('Net::DRI::Protocol::EPP::Extensions::Nominet::DirectRights');
use_ok('Net::DRI::Protocol::EPP::Extensions::Nominet::Domain');
use_ok('Net::DRI::Protocol::EPP::Extensions::Nominet::Message');
use_ok('Net::DRI::Protocol::EPP::Extensions::Nominet::Notifications');
use_ok('Net::DRI::Protocol::EPP::Extensions::Nominet::Session');
use_ok('Net::DRI::Protocol::EPP::Extensions::NO::Result');
use_ok('Net::DRI::Protocol::EPP::Extensions::NSgroup');
use_ok('Net::DRI::Protocol::EPP::Extensions::NZ');
use_ok('Net::DRI::Protocol::EPP::Extensions::PIR');
use_ok('Net::DRI::Protocol::EPP::Extensions::PL');
use_ok('Net::DRI::Protocol::EPP::Extensions::PL::Contact');
use_ok('Net::DRI::Protocol::EPP::Extensions::PL::Domain');
use_ok('Net::DRI::Protocol::EPP::Extensions::PL::Future');
use_ok('Net::DRI::Protocol::EPP::Extensions::PL::Message');
use_ok('Net::DRI::Protocol::EPP::Extensions::PL::Report');
use_ok('Net::DRI::Protocol::EPP::Extensions::PL::SecDNS');
use_ok('Net::DRI::Protocol::EPP::Extensions::RegBox');
use_ok('Net::DRI::Protocol::EPP::Extensions::RegBox::ServiceMessage');
use_ok('Net::DRI::Protocol::EPP::Extensions::ResellerInfo');
use_ok('Net::DRI::Protocol::EPP::Extensions::ResellerObject');
use_ok('Net::DRI::Protocol::EPP::Extensions::Reverse');
use_ok('Net::DRI::Protocol::EPP::Extensions::RF');
use_ok('Net::DRI::Protocol::EPP::Extensions::RO');
use_ok('Net::DRI::Protocol::EPP::Extensions::RO::Contact');
use_ok('Net::DRI::Protocol::EPP::Extensions::RO::Domain');
use_ok('Net::DRI::Protocol::EPP::Extensions::RU');
use_ok('Net::DRI::Protocol::EPP::Extensions::SecDNS');
use_ok('Net::DRI::Protocol::EPP::Extensions::ServiceMessage');
use_ok('Net::DRI::Protocol::EPP::Extensions::SIDN');
use_ok('Net::DRI::Protocol::EPP::Extensions::SIDN::Contact');
use_ok('Net::DRI::Protocol::EPP::Extensions::SIDN::Domain');
use_ok('Net::DRI::Protocol::EPP::Extensions::SIDN_GTLD');
use_ok('Net::DRI::Protocol::EPP::Extensions::SIDN::Host');
use_ok('Net::DRI::Protocol::EPP::Extensions::SIDN::Message');
use_ok('Net::DRI::Protocol::EPP::Extensions::SIDN::Notifications');
use_ok('Net::DRI::Protocol::EPP::Extensions::SKNIC');
use_ok('Net::DRI::Protocol::EPP::Extensions::SU');
use_ok('Net::DRI::Protocol::EPP::Extensions::SWITCH');
use_ok('Net::DRI::Protocol::EPP::Extensions::TangoRS');
use_ok('Net::DRI::Protocol::EPP::Extensions::TangoRS::Auction');
use_ok('Net::DRI::Protocol::EPP::Extensions::TangoRS::ContactEligibility');
use_ok('Net::DRI::Protocol::EPP::Extensions::TangoRS::IDN');
use_ok('Net::DRI::Protocol::EPP::Extensions::TangoRS::LaunchPhase');
use_ok('Net::DRI::Protocol::EPP::Extensions::TangoRS::Promotion');
use_ok('Net::DRI::Protocol::EPP::Extensions::TCI');
use_ok('Net::DRI::Protocol::EPP::Extensions::TCI::Billing');
use_ok('Net::DRI::Protocol::EPP::Extensions::TCI::Contact');
use_ok('Net::DRI::Protocol::EPP::Extensions::TCI::Domain');
use_ok('Net::DRI::Protocol::EPP::Extensions::TCI_gTLD');
use_ok('Net::DRI::Protocol::EPP::Extensions::TCI_gTLD::Contact');
use_ok('Net::DRI::Protocol::EPP::Extensions::TCI_gTLD::Domain');
use_ok('Net::DRI::Protocol::EPP::Extensions::TCI_gTLD::Message');
use_ok('Net::DRI::Protocol::EPP::Extensions::TCI::Message');
use_ok('Net::DRI::Protocol::EPP::Extensions::TCI::Registrar');
use_ok('Net::DRI::Protocol::EPP::Extensions::TWNIC');
use_ok('Net::DRI::Protocol::EPP::Extensions::UA');
use_ok('Net::DRI::Protocol::EPP::Extensions::UA::Domain');
use_ok('Net::DRI::Protocol::EPP::Extensions::UA::HostDelete');
use_ok('Net::DRI::Protocol::EPP::Extensions::UniRegistry');
use_ok('Net::DRI::Protocol::EPP::Extensions::UniRegistry::Centric');
use_ok('Net::DRI::Protocol::EPP::Extensions::UniRegistry::EPS');
use_ok('Net::DRI::Protocol::EPP::Extensions::UniRegistry::Market');
use_ok('Net::DRI::Protocol::EPP::Extensions::UniRegistry::RegistryMessage');
use_ok('Net::DRI::Protocol::EPP::Extensions::UnitedTLD');
use_ok('Net::DRI::Protocol::EPP::Extensions::UnitedTLD::Charge');
use_ok('Net::DRI::Protocol::EPP::Extensions::UnitedTLD::Finance');
use_ok('Net::DRI::Protocol::EPP::Extensions::VeriSign::Balance');
use_ok('Net::DRI::Protocol::EPP::Extensions::VeriSign::ClientAttributes');
use_ok('Net::DRI::Protocol::EPP::Extensions::VeriSign::DefReg');
use_ok('Net::DRI::Protocol::EPP::Extensions::VeriSign::EmailFwd');
use_ok('Net::DRI::Protocol::EPP::Extensions::VeriSign::IDNLanguage');
use_ok('Net::DRI::Protocol::EPP::Extensions::VeriSign::JobsContact');
use_ok('Net::DRI::Protocol::EPP::Extensions::VeriSign::NameStore');
use_ok('Net::DRI::Protocol::EPP::Extensions::VeriSign::Platforms::COM_NET');
use_ok('Net::DRI::Protocol::EPP::Extensions::VeriSign::Platforms::NameStore');
use_ok('Net::DRI::Protocol::EPP::Extensions::VeriSign::PollLowBalance');
use_ok('Net::DRI::Protocol::EPP::Extensions::VeriSign::PollRGP');
use_ok('Net::DRI::Protocol::EPP::Extensions::VeriSign::PremiumDomain');
use_ok('Net::DRI::Protocol::EPP::Extensions::VeriSign::Registry');
use_ok('Net::DRI::Protocol::EPP::Extensions::VeriSign::Suggestion');
use_ok('Net::DRI::Protocol::EPP::Extensions::VeriSign::Sync');
use_ok('Net::DRI::Protocol::EPP::Extensions::VeriSign::TwoFactorAuth');
use_ok('Net::DRI::Protocol::EPP::Extensions::VeriSign::WhoisInfo');
use_ok('Net::DRI::Protocol::EPP::Extensions::VeriSign::WhoWas');
use_ok('Net::DRI::Protocol::EPP::Extensions::VeriSign::ZoneManagement');
use_ok('Net::DRI::Protocol::EPP::Extensions::ZACR');
use_ok('Net::DRI::Protocol::EPP::Extensions::ZACR::Contact');
use_ok('Net::DRI::Protocol::EPP::Extensions::ZACR::Domain');
use_ok('Net::DRI::Protocol::EPP::Message');
use_ok('Net::DRI::Protocol::EPP::Util');
use_ok('Net::DRI::Protocol::IRIS');
use_ok('Net::DRI::Protocol::IRIS::Core');
use_ok('Net::DRI::Protocol::IRIS::DCHK::Domain');
use_ok('Net::DRI::Protocol::IRIS::DCHK::Status');
use_ok('Net::DRI::Protocol::IRIS::LWZ');
use_ok('Net::DRI::Protocol::IRIS::Message');
use_ok('Net::DRI::Protocol::IRIS::XCP');
use_ok('Net::DRI::Protocol::Message');
use_ok('Net::DRI::Protocol::OpenSRS::XCP');
use_ok('Net::DRI::Protocol::OpenSRS::XCP::Account');
use_ok('Net::DRI::Protocol::OpenSRS::XCP::Connection');
use_ok('Net::DRI::Protocol::OpenSRS::XCP::Domain');
use_ok('Net::DRI::Protocol::OpenSRS::XCP::Host');
use_ok('Net::DRI::Protocol::OpenSRS::XCP::Message');
use_ok('Net::DRI::Protocol::OpenSRS::XCP::Session');
use_ok('Net::DRI::Protocol::OVH::WS');
use_ok('Net::DRI::Protocol::OVH::WS::Account');
use_ok('Net::DRI::Protocol::OVH::WS::Connection');
use_ok('Net::DRI::Protocol::OVH::WS::Domain');
use_ok('Net::DRI::Protocol::OVH::WS::Message');
use_ok('Net::DRI::Protocol::ResultStatus');
use_ok('Net::DRI::Protocol::RRI');
use_ok('Net::DRI::Protocol::RRI::Connection');
use_ok('Net::DRI::Protocol::RRI::Contact');
use_ok('Net::DRI::Protocol::RRI::Domain');
use_ok('Net::DRI::Protocol::RRI::Message');
use_ok('Net::DRI::Protocol::RRI::RegAcc');
use_ok('Net::DRI::Protocol::RRI::RegistryMessage');
use_ok('Net::DRI::Protocol::RRI::Session');
use_ok('Net::DRI::Protocol::RRP');
use_ok('Net::DRI::Protocol::RRP::Connection');
use_ok('Net::DRI::Protocol::RRP::Core::Domain');
use_ok('Net::DRI::Protocol::RRP::Core::Host');
use_ok('Net::DRI::Protocol::RRP::Core::Session');
use_ok('Net::DRI::Protocol::RRP::Core::Status');
use_ok('Net::DRI::Protocol::RRP::Message');
use_ok('Net::DRI::Protocol::TMCH');
use_ok('Net::DRI::Protocol::TMCH::Connection');
use_ok('Net::DRI::Protocol::TMCH::Core::Mark');
use_ok('Net::DRI::Protocol::TMCH::Core::RegistryMessage');
use_ok('Net::DRI::Protocol::TMCH::Core::Session');
use_ok('Net::DRI::Protocol::TMCH::Message');
use_ok('Net::DRI::Protocol::TMDB');
use_ok('Net::DRI::Protocol::TMDB::Commands');
use_ok('Net::DRI::Protocol::TMDB::Connection');
use_ok('Net::DRI::Protocol::TMDB::Message');
use_ok('Net::DRI::Protocol::Whois');
use_ok('Net::DRI::Protocol::Whois::Connection');
use_ok('Net::DRI::Protocol::Whois::Domain::AERO');
use_ok('Net::DRI::Protocol::Whois::Domain::AT');
use_ok('Net::DRI::Protocol::Whois::Domain::CAT');
use_ok('Net::DRI::Protocol::Whois::Domain::COM');
use_ok('Net::DRI::Protocol::Whois::Domain::common');
use_ok('Net::DRI::Protocol::Whois::Domain::EU');
use_ok('Net::DRI::Protocol::Whois::Domain::INFO');
use_ok('Net::DRI::Protocol::Whois::Domain::LU');
use_ok('Net::DRI::Protocol::Whois::Domain::MOBI');
use_ok('Net::DRI::Protocol::Whois::Domain::NGTLD');
use_ok('Net::DRI::Protocol::Whois::Domain::ORG');
use_ok('Net::DRI::Protocol::Whois::Domain::PT');
use_ok('Net::DRI::Protocol::Whois::Domain::SE');
use_ok('Net::DRI::Protocol::Whois::Domain::TRAVEL');
use_ok('Net::DRI::Protocol::Whois::Domain::WS');
use_ok('Net::DRI::Protocol::Whois::Message');
use_ok('Net::DRI::Registry');
use_ok('Net::DRI::Shell');
use_ok('Net::DRI::Transport');
use_ok('Net::DRI::Transport::Defer');
use_ok('Net::DRI::Transport::Dummy');
use_ok('Net::DRI::Transport::HTTP');
use_ok('Net::DRI::Transport::SMTP');
use_ok('Net::DRI::Transport::Socket');
use_ok('Net::DRI::Util');
}

exit 0;
