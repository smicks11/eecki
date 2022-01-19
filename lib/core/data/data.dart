import 'package:eecki/core/models/popular.dart';
import 'package:eecki/core/models/review.dart';
import 'package:eecki/core/models/sp_around.dart';
import 'package:eecki/core/models/top_providers.dart';

List<SpAround> serviceProverAround = [
  SpAround(
      name: "Chike Ndubisi",
      image: "sp_3.jpg",
      desc:
          "I offer plumbing services, fixing of taps and borehole at an affordable rate.",
      rating: 5.0,
      ratingLevel: 23,
      price: 10,
      bannerImage: "sp_3.jpg"),
  SpAround(
      name: "Daniel Ade",
      image: "sp_3.jpg",
      desc: "I offer services at top notch level, at an affordable rate.",
      rating: 5.0,
      ratingLevel: 21,
      bannerImage: "sp_7.jpg",
      price: 5),
  SpAround(
      name: "Bernard Wisdom",
      image: "sp_2.jpg",
      desc:
          "I make series and diverisities of meals including intercontinental dishes.",
      rating: 5.0,
      ratingLevel: 20,
      bannerImage: "sp_5.jpg",
      price: 20),
  SpAround(
      name: "Yinka Adesewa",
      image: "sp_4.jpg",
      desc:
          "I offer services as a nurse including geriatric care and nanny services for babies .",
      rating: 5.0,
      ratingLevel: 23,
      price: 10,
      bannerImage: "sp_4.jpg"),
];

List<TopModel> topModelList = [
  TopModel(
    name: "Tife makinde",
    location: "Lekki",
    image: "sp_1.jpg",
  ),
  TopModel(
    name: "Victor",
    location: "Ketu",
    image: "sp_2.jpg",
  ),
  TopModel(
    name: "Adesewa",
    location: "Ikeja",
    image: "sp_3.jpg",
  ),
  TopModel(
    name: "Gabriel",
    location: "Agege",
    image: "sp_4.jpg",
  ),
  TopModel(
    name: "Teni",
    location: "Gbagada",
    image: "sp_5.jpg",
  ),
  TopModel(
    name: "Efiong",
    location: "Ipaja",
    image: "sp_6.jpg",
  ),
];
List<TopModel> ratedModelList = [
  TopModel(
    name: "Adesewa",
    location: "Ikeja",
    image: "sp_3.jpg",
  ),
  TopModel(
    name: "Gabriel",
    location: "Agege",
    image: "sp_4.jpg",
  ),
  TopModel(
    name: "Teni",
    location: "Gbagada",
    image: "sp_5.jpg",
  ),
  TopModel(
    name: "Efiong",
    location: "Ipaja",
    image: "sp_6.jpg",
  ),
];

///Popular Serrvices
List<Popular> popularServiceList = [
  Popular(
    name: "Music promotion",
    image: "music.jpg",
  ),
  Popular(
    name: "Nurse and Carers",
    image: "nurse.png",
  ),
  Popular(
    name: "Photography",
    image: "photography.jpg",
  ),
  Popular(
    name: "Programming",
    image: "program.jpg",
  ),
  Popular(
    name: "Fashion",
    image: "fash.jpg",
  ),
];

List<Review> reviewList = [
  Review(
      image: "sp_6.jpg",
      Name: "Benjamin Adeyefa",
      comment:
          "He is very good at what he does and renders his services with utmost excellence. Affordable rate with efficient services"),
  Review(
      image: "sp_5.jpg",
      Name: "Tife Adeyefa",
      comment:
          "He is very good at what he does and renders his services with utmost excellence. Affordable rate with efficient services"),
  Review(
      image: "sp_6.jpg",
      Name: "Kolawole Williams",
      comment:
          "He is very good at what he does and renders his services with utmost excellence. Affordable rate with efficient services"),
  Review(
      image: "sp_5.jpg",
      Name: "Daniel Adeyefa",
      comment:
          "He is very good at what he does and renders his services with utmost excellence. Affordable rate with efficient services"),
];
