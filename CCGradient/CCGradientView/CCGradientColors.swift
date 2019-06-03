//
//  CCGradientView.swift
//  CCGradient
//
//  Created by Amir REZVANI on 5/30/19.
//  Copyright © 2019 Amir REZVANI. All rights reserved.
//
//MIT License
//
//Copyright (c) 2019 Amir Rezvani

//Permission is hereby granted, free of charge, to any person obtaining a copy
//of this software and associated documentation files (the "Software"), to deal
//in the Software without restriction, including without limitation the rights
//to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//copies of the Software, and to permit persons to whom the Software is
//furnished to do so, subject to the following conditions:

//The above copyright notice and this permission notice shall be included in all
//copies or substantial portions of the Software.

//THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//SOFTWARE.

import UIKit

struct CCGradientColors {
    static let Omolon = [
        UIColor(red: 0.03529412,
                green: 0.11764706,
                blue: 0.22745098,
                alpha: 1.0),
        UIColor(red: 0.18431373,
                green: 0.5019608,
                blue: 0.92941177,
                alpha: 1.0),
        UIColor(red: 0.1764706,
                green: 0.61960787,
                blue: 0.8784314,
                alpha: 1.0)]
    static let Farhan = [
        UIColor(red: 0.5803922,
                green: 0.0,
                blue: 0.827451,
                alpha: 1.0),
        UIColor(red: 0.29411766,
                green: 0.0,
                blue: 0.50980395,
                alpha: 1.0)]
    static let Purple = [
        UIColor(red: 0.78431374,
                green: 0.30588236,
                blue: 0.5372549,
                alpha: 1.0),
        UIColor(red: 0.94509804,
                green: 0.37254903,
                blue: 0.4745098,
                alpha: 1.0)]
    static let Ibtesam = [
        UIColor(red: 0.0,
                green: 0.9607843,
                blue: 0.627451,
                alpha: 1.0),
        UIColor(red: 0.0,
                green: 0.8509804,
                blue: 0.9607843,
                alpha: 1.0)]
    static let RadioactiveHeat = [
        UIColor(red: 0.96862745,
                green: 0.5803922,
                blue: 0.11764706,
                alpha: 1.0),
        UIColor(red: 0.44705883,
                green: 0.7764706,
                blue: 0.9372549,
                alpha: 1.0),
        UIColor(red: 0.0,
                green: 0.6509804,
                blue: 0.31764707,
                alpha: 1.0)]
    static let TheSkyAndTheSea = [
        UIColor(red: 0.96862745,
                green: 0.5803922,
                blue: 0.11764706,
                alpha: 1.0),
        UIColor(red: 0.0,
                green: 0.30588236,
                blue: 0.56078434,
                alpha: 1.0)]
    static let FromIceToFire = [
        UIColor(red: 0.44705883,
                green: 0.7764706,
                blue: 0.9372549,
                alpha: 1.0),
        UIColor(red: 0.0,
                green: 0.30588236,
                blue: 0.56078434,
                alpha: 1.0)]
    static let BlueOrange = [
        UIColor(red: 0.99215686,
                green: 0.5058824,
                blue: 0.07058824,
                alpha: 1.0),
        UIColor(red: 0.0,
                green: 0.52156866,
                blue: 0.7921569,
                alpha: 1.0)]
    static let PurpleDream = [
        UIColor(red: 0.7490196,
                green: 0.3529412,
                blue: 0.8784314,
                alpha: 1.0),
        UIColor(red: 0.65882355,
                green: 0.06666667,
                blue: 0.85490197,
                alpha: 1.0)]
    static let Blu = [
        UIColor(red: 0.0,
                green: 0.25490198,
                blue: 0.41568628,
                alpha: 1.0),
        UIColor(red: 0.89411765,
                green: 0.8980392,
                blue: 0.9019608,
                alpha: 1.0)]
    static let SummerBreeze = [
        UIColor(red: 0.9843137,
                green: 0.92941177,
                blue: 0.5882353,
                alpha: 1.0),
        UIColor(red: 0.67058825,
                green: 0.9254902,
                blue: 0.8392157,
                alpha: 1.0)]
    static let Ver = [
        UIColor(red: 1.0,
                green: 0.8784314,
                blue: 0.0,
                alpha: 1.0),
        UIColor(red: 0.4745098,
                green: 0.62352943,
                blue: 0.047058824,
                alpha: 1.0)]
    static let VerBlack = [
        UIColor(red: 0.96862745,
                green: 0.972549,
                blue: 0.972549,
                alpha: 1.0),
        UIColor(red: 0.6745098,
                green: 0.73333335,
                blue: 0.47058824,
                alpha: 1.0)]
    static let Combi = [
        UIColor(red: 0.0,
                green: 0.25490198,
                blue: 0.41568628,
                alpha: 1.0),
        UIColor(red: 0.4745098,
                green: 0.62352943,
                blue: 0.047058824,
                alpha: 1.0),
        UIColor(red: 1.0,
                green: 0.8784314,
                blue: 0.0,
                alpha: 1.0)]
    static let Anwar = [
        UIColor(red: 0.2,
                green: 0.3019608,
                blue: 0.3137255,
                alpha: 1.0),
        UIColor(red: 0.79607844,
                green: 0.7921569,
                blue: 0.64705884,
                alpha: 1.0)]
    static let Bluelagoo = [
        UIColor(red: 0.0,
                green: 0.32156864,
                blue: 0.83137256,
                alpha: 1.0),
        UIColor(red: 0.2627451,
                green: 0.39215687,
                blue: 0.96862745,
                alpha: 1.0),
        UIColor(red: 0.43529412,
                green: 0.69411767,
                blue: 0.9882353,
                alpha: 1.0)]
    static let Lunada = [
        UIColor(red: 0.32941177,
                green: 0.2,
                blue: 1.0,
                alpha: 1.0),
        UIColor(red: 0.1254902,
                green: 0.7411765,
                blue: 1.0,
                alpha: 1.0),
        UIColor(red: 0.64705884,
                green: 0.99607843,
                blue: 0.79607844,
                alpha: 1.0)]
    static let Reaqua = [
        UIColor(red: 0.4745098,
                green: 0.62352943,
                blue: 0.047058824,
                alpha: 1.0),
        UIColor(red: 0.6745098,
                green: 0.73333335,
                blue: 0.47058824,
                alpha: 1.0)]
    static let Mango = [
        UIColor(red: 1.0,
                green: 0.8862745,
                blue: 0.34901962,
                alpha: 1.0),
        UIColor(red: 1.0,
                green: 0.654902,
                blue: 0.31764707,
                alpha: 1.0)]
    static let Bupe = [
        UIColor(red: 0.0,
                green: 0.25490198,
                blue: 0.41568628,
                alpha: 1.0),
        UIColor(red: 0.89411765,
                green: 0.8980392,
                blue: 0.9019608,
                alpha: 1.0)]
    static let Rea = [
        UIColor(red: 1.0,
                green: 0.8784314,
                blue: 0.0,
                alpha: 1.0),
        UIColor(red: 0.4745098,
                green: 0.62352943,
                blue: 0.047058824,
                alpha: 1.0)]
    static let Windy = [
        UIColor(red: 0.6745098,
                green: 0.7137255,
                blue: 0.8980392,
                alpha: 1.0),
        UIColor(red: 0.5254902,
                green: 0.99215686,
                blue: 0.9098039,
                alpha: 1.0)]
    static let RoyalBlue = [
        UIColor(red: 0.3254902,
                green: 0.4117647,
                blue: 0.4627451,
                alpha: 1.0),
        UIColor(red: 0.16078432,
                green: 0.18039216,
                blue: 0.28627452,
                alpha: 1.0)]
    static let RoyalBlue_Petrol = [
        UIColor(red: 0.73333335,
                green: 0.8235294,
                blue: 0.77254903,
                alpha: 1.0),
        UIColor(red: 0.3254902,
                green: 0.4117647,
                blue: 0.4627451,
                alpha: 1.0),
        UIColor(red: 0.16078432,
                green: 0.18039216,
                blue: 0.28627452,
                alpha: 1.0)]
    static let Copper = [
        UIColor(red: 0.7176471,
                green: 0.59607846,
                blue: 0.5686275,
                alpha: 1.0),
        UIColor(red: 0.5803922,
                green: 0.44313726,
                blue: 0.41960785,
                alpha: 1.0)]
    static let Anamnisar = [
        UIColor(red: 0.5921569,
                green: 0.5882353,
                blue: 0.9411765,
                alpha: 1.0),
        UIColor(red: 0.9843137,
                green: 0.78039217,
                blue: 0.83137256,
                alpha: 1.0)]
    static let Petrol = [
        UIColor(red: 0.73333335,
                green: 0.8235294,
                blue: 0.77254903,
                alpha: 1.0),
        UIColor(red: 0.3254902,
                green: 0.4117647,
                blue: 0.4627451,
                alpha: 1.0)]
    static let Sky = [
        UIColor(red: 0.02745098,
                green: 0.39607844,
                blue: 0.52156866,
                alpha: 1.0),
        UIColor(red: 1.0,
                green: 1.0,
                blue: 1.0,
                alpha: 1.0)]
    static let Sel = [
        UIColor(red: 0.0,
                green: 0.27450982,
                blue: 0.49803922,
                alpha: 1.0),
        UIColor(red: 0.64705884,
                green: 0.8,
                blue: 0.50980395,
                alpha: 1.0)]
    static let Afternoon = [
        UIColor(red: 0.0,
                green: 0.047058824,
                blue: 0.2509804,
                alpha: 1.0),
        UIColor(red: 0.3764706,
                green: 0.49019608,
                blue: 0.54509807,
                alpha: 1.0)]
    static let Skyline = [
        UIColor(red: 0.078431375,
                green: 0.53333336,
                blue: 0.8,
                alpha: 1.0),
        UIColor(red: 0.16862746,
                green: 0.19607843,
                blue: 0.69803923,
                alpha: 1.0)]
    static let DIMIGO = [
        UIColor(red: 0.9254902,
                green: 0.0,
                blue: 0.54901963,
                alpha: 1.0),
        UIColor(red: 0.9882353,
                green: 0.40392157,
                blue: 0.40392157,
                alpha: 1.0)]
    static let PurpleLove = [
        UIColor(red: 0.8,
                green: 0.16862746,
                blue: 0.36862746,
                alpha: 1.0),
        UIColor(red: 0.45882353,
                green: 0.22745098,
                blue: 0.53333336,
                alpha: 1.0)]
    static let SexyBlue = [
        UIColor(red: 0.12941177,
                green: 0.5764706,
                blue: 0.6901961,
                alpha: 1.0),
        UIColor(red: 0.42745098,
                green: 0.8352941,
                blue: 0.92941177,
                alpha: 1.0)]
    static let Blooker = [
        UIColor(red: 0.9019608,
                green: 0.36078432,
                blue: 0.0,
                alpha: 1.0),
        UIColor(red: 0.9764706,
                green: 0.83137256,
                blue: 0.13725491,
                alpha: 1.0)]
    static let SeaBlue = [
        UIColor(red: 0.16862746,
                green: 0.34509805,
                blue: 0.4627451,
                alpha: 1.0),
        UIColor(red: 0.30588236,
                green: 0.2627451,
                blue: 0.4627451,
                alpha: 1.0)]
    static let Nimvelo = [
        UIColor(red: 0.19215687,
                green: 0.2784314,
                blue: 0.33333334,
                alpha: 1.0),
        UIColor(red: 0.14901961,
                green: 0.627451,
                blue: 0.85490197,
                alpha: 1.0)]
    static let Hazel = [
        UIColor(red: 0.46666667,
                green: 0.6313726,
                blue: 0.827451,
                alpha: 1.0),
        UIColor(red: 0.4745098,
                green: 0.79607844,
                blue: 0.7921569,
                alpha: 1.0),
        UIColor(red: 0.9019608,
                green: 0.5176471,
                blue: 0.68235296,
                alpha: 1.0)]
    static let NoontoDusk = [
        UIColor(red: 1.0,
                green: 0.43137255,
                blue: 0.49803922,
                alpha: 1.0),
        UIColor(red: 0.7490196,
                green: 0.9137255,
                blue: 1.0,
                alpha: 1.0)]
    static let YouTube = [
        UIColor(red: 0.8980392,
                green: 0.1764706,
                blue: 0.15294118,
                alpha: 1.0),
        UIColor(red: 0.7019608,
                green: 0.07058824,
                blue: 0.09019608,
                alpha: 1.0)]
    static let CoolBrown = [
        UIColor(red: 0.3764706,
                green: 0.21960784,
                blue: 0.07450981,
                alpha: 1.0),
        UIColor(red: 0.69803923,
                green: 0.62352943,
                blue: 0.5803922,
                alpha: 1.0)]
    static let HarmonicEnergy = [
        UIColor(red: 0.08627451,
                green: 0.627451,
                blue: 0.52156866,
                alpha: 1.0),
        UIColor(red: 0.95686275,
                green: 0.8156863,
                blue: 0.24705882,
                alpha: 1.0)]
    static let PlayingwithReds = [
        UIColor(red: 0.827451,
                green: 0.0627451,
                blue: 0.15294118,
                alpha: 1.0),
        UIColor(red: 0.91764706,
                green: 0.21960784,
                blue: 0.3019608,
                alpha: 1.0)]
    static let SunnyDays = [
        UIColor(red: 0.92941177,
                green: 0.8980392,
                blue: 0.45490196,
                alpha: 1.0),
        UIColor(red: 0.88235295,
                green: 0.9607843,
                blue: 0.76862746,
                alpha: 1.0)]
    static let GreenBeach = [
        UIColor(red: 0.007843138,
                green: 0.6666667,
                blue: 0.6901961,
                alpha: 1.0),
        UIColor(red: 0.0,
                green: 0.8039216,
                blue: 0.6745098,
                alpha: 1.0)]
    static let IntuitivePurple = [
        UIColor(red: 0.85490197,
                green: 0.13333334,
                blue: 1.0,
                alpha: 1.0),
        UIColor(red: 0.5921569,
                green: 0.2,
                blue: 0.93333334,
                alpha: 1.0)]
    static let EmeraldWater = [
        UIColor(red: 0.20392157,
                green: 0.56078434,
                blue: 0.3137255,
                alpha: 1.0),
        UIColor(red: 0.3372549,
                green: 0.7058824,
                blue: 0.827451,
                alpha: 1.0)]
    static let LemonTwist = [
        UIColor(red: 0.23529412,
                green: 0.64705884,
                blue: 0.36078432,
                alpha: 1.0),
        UIColor(red: 0.70980394,
                green: 0.6745098,
                blue: 0.28627452,
                alpha: 1.0)]
    static let MonteCarlo = [
        UIColor(red: 0.8,
                green: 0.58431375,
                blue: 0.7529412,
                alpha: 1.0),
        UIColor(red: 0.85882354,
                green: 0.83137256,
                blue: 0.7058824,
                alpha: 1.0),
        UIColor(red: 0.47843137,
                green: 0.6313726,
                blue: 0.8235294,
                alpha: 1.0)]
    static let Horizon = [
        UIColor(red: 0.0,
                green: 0.22352941,
                blue: 0.4509804,
                alpha: 1.0),
        UIColor(red: 0.8980392,
                green: 0.8980392,
                blue: 0.74509805,
                alpha: 1.0)]
    static let RoseWater = [
        UIColor(red: 0.8980392,
                green: 0.3647059,
                blue: 0.5294118,
                alpha: 1.0),
        UIColor(red: 0.37254903,
                green: 0.7647059,
                blue: 0.89411765,
                alpha: 1.0)]
    static let Frozen = [
        UIColor(red: 0.2509804,
                green: 0.23137255,
                blue: 0.2901961,
                alpha: 1.0),
        UIColor(red: 0.90588236,
                green: 0.9137255,
                blue: 0.73333335,
                alpha: 1.0)]
    static let MangoPulp = [
        UIColor(red: 0.9411765,
                green: 0.59607846,
                blue: 0.09803922,
                alpha: 1.0),
        UIColor(red: 0.92941177,
                green: 0.87058824,
                blue: 0.3647059,
                alpha: 1.0)]
    static let BloodyMary = [
        UIColor(red: 1.0,
                green: 0.31764707,
                blue: 0.18431373,
                alpha: 1.0),
        UIColor(red: 0.8666667,
                green: 0.14117648,
                blue: 0.4627451,
                alpha: 1.0)]
    static let Aubergine = [
        UIColor(red: 0.6666667,
                green: 0.02745098,
                blue: 0.41960785,
                alpha: 1.0),
        UIColor(red: 0.38039216,
                green: 0.015686275,
                blue: 0.37254903,
                alpha: 1.0)]
    static let AquaMarine = [
        UIColor(red: 0.101960786,
                green: 0.16078432,
                blue: 0.5019608,
                alpha: 1.0),
        UIColor(red: 0.14901961,
                green: 0.8156863,
                blue: 0.80784315,
                alpha: 1.0)]
    static let Sunrise = [
        UIColor(red: 1.0,
                green: 0.31764707,
                blue: 0.18431373,
                alpha: 1.0),
        UIColor(red: 0.9411765,
                green: 0.59607846,
                blue: 0.09803922,
                alpha: 1.0)]
    static let PurpleParadise = [
        UIColor(red: 0.11372549,
                green: 0.16862746,
                blue: 0.39215687,
                alpha: 1.0),
        UIColor(red: 0.972549,
                green: 0.8039216,
                blue: 0.85490197,
                alpha: 1.0)]
    static let Stripe = [
        UIColor(red: 0.12156863,
                green: 0.63529414,
                blue: 1.0,
                alpha: 1.0),
        UIColor(red: 0.07058824,
                green: 0.84705883,
                blue: 0.98039216,
                alpha: 1.0),
        UIColor(red: 0.6509804,
                green: 1.0,
                blue: 0.79607844,
                alpha: 1.0)]
    static let SeaWeed = [
        UIColor(red: 0.29803923,
                green: 0.72156864,
                blue: 0.76862746,
                alpha: 1.0),
        UIColor(red: 0.23529412,
                green: 0.827451,
                blue: 0.6784314,
                alpha: 1.0)]
    static let Pinky = [
        UIColor(red: 0.8666667,
                green: 0.36862746,
                blue: 0.5372549,
                alpha: 1.0),
        UIColor(red: 0.96862745,
                green: 0.73333335,
                blue: 0.5921569,
                alpha: 1.0)]
    static let Cherry = [
        UIColor(red: 0.92156863,
                green: 0.2,
                blue: 0.28627452,
                alpha: 1.0),
        UIColor(red: 0.95686275,
                green: 0.36078432,
                blue: 0.2627451,
                alpha: 1.0)]
    static let Mojito = [
        UIColor(red: 0.11372549,
                green: 0.5921569,
                blue: 0.42352942,
                alpha: 1.0),
        UIColor(red: 0.5764706,
                green: 0.9764706,
                blue: 0.7254902,
                alpha: 1.0)]
    static let JuicyOrange = [
        UIColor(red: 1.0,
                green: 0.5019608,
                blue: 0.03137255,
                alpha: 1.0),
        UIColor(red: 1.0,
                green: 0.78431374,
                blue: 0.21568628,
                alpha: 1.0)]
    static let Mirage = [
        UIColor(red: 0.08627451,
                green: 0.13333334,
                blue: 0.16470589,
                alpha: 1.0),
        UIColor(red: 0.22745098,
                green: 0.3764706,
                blue: 0.4509804,
                alpha: 1.0)]
    static let SteelGray = [
        UIColor(red: 0.12156863,
                green: 0.10980392,
                blue: 0.17254902,
                alpha: 1.0),
        UIColor(red: 0.57254905,
                green: 0.5529412,
                blue: 0.67058825,
                alpha: 1.0)]
    static let Kashmir = [
        UIColor(red: 0.38039216,
                green: 0.2627451,
                blue: 0.52156866,
                alpha: 1.0),
        UIColor(red: 0.31764707,
                green: 0.3882353,
                blue: 0.58431375,
                alpha: 1.0)]
    static let ElectricViolet = [
        UIColor(red: 0.2784314,
                green: 0.4627451,
                blue: 0.9019608,
                alpha: 1.0),
        UIColor(red: 0.5568628,
                green: 0.32941177,
                blue: 0.9137255,
                alpha: 1.0)]
    static let VeniceBlue = [
        UIColor(red: 0.03137255,
                green: 0.3137255,
                blue: 0.47058824,
                alpha: 1.0),
        UIColor(red: 0.52156866,
                green: 0.84705883,
                blue: 0.80784315,
                alpha: 1.0)]
    static let BoraBora = [
        UIColor(red: 0.16862746,
                green: 0.7529412,
                blue: 0.89411765,
                alpha: 1.0),
        UIColor(red: 0.91764706,
                green: 0.9254902,
                blue: 0.7764706,
                alpha: 1.0)]
    static let Moss = [
        UIColor(red: 0.07450981,
                green: 0.30588236,
                blue: 0.36862746,
                alpha: 1.0),
        UIColor(red: 0.44313726,
                green: 0.69803923,
                blue: 0.5019608,
                alpha: 1.0)]
    static let ShroomHaze = [
        UIColor(red: 0.36078432,
                green: 0.14509805,
                blue: 0.5529412,
                alpha: 1.0),
        UIColor(red: 0.2627451,
                green: 0.5372549,
                blue: 0.63529414,
                alpha: 1.0)]
    static let Mystic = [
        UIColor(red: 0.45882353,
                green: 0.49803922,
                blue: 0.6039216,
                alpha: 1.0),
        UIColor(red: 0.84313726,
                green: 0.8666667,
                blue: 0.9098039,
                alpha: 1.0)]
    static let MidnightCity = [
        UIColor(red: 0.13725491,
                green: 0.14509805,
                blue: 0.14901961,
                alpha: 1.0),
        UIColor(red: 0.25490198,
                green: 0.2627451,
                blue: 0.27058825,
                alpha: 1.0)]
    static let SeaBlizz = [
        UIColor(red: 0.10980392,
                green: 0.84705883,
                blue: 0.8235294,
                alpha: 1.0),
        UIColor(red: 0.5764706,
                green: 0.92941177,
                blue: 0.78039217,
                alpha: 1.0)]
    static let Opa = [
        UIColor(red: 0.23921569,
                green: 0.49411765,
                blue: 0.6666667,
                alpha: 1.0),
        UIColor(red: 1.0,
                green: 0.89411765,
                blue: 0.47843137,
                alpha: 1.0)]
    static let Titanium = [
        UIColor(red: 0.15686275,
                green: 0.1882353,
                blue: 0.28235295,
                alpha: 1.0),
        UIColor(red: 0.52156866,
                green: 0.5764706,
                blue: 0.59607846,
                alpha: 1.0)]
    static let Mantle = [
        UIColor(red: 0.14117648,
                green: 0.7764706,
                blue: 0.8627451,
                alpha: 1.0),
        UIColor(red: 0.31764707,
                green: 0.2901961,
                blue: 0.6156863,
                alpha: 1.0)]
    static let Dracula = [
        UIColor(red: 0.8627451,
                green: 0.14117648,
                blue: 0.14117648,
                alpha: 1.0),
        UIColor(red: 0.2901961,
                green: 0.3372549,
                blue: 0.6156863,
                alpha: 1.0)]
    static let Peach = [
        UIColor(red: 0.92941177,
                green: 0.25882354,
                blue: 0.39215687,
                alpha: 1.0),
        UIColor(red: 1.0,
                green: 0.92941177,
                blue: 0.7372549,
                alpha: 1.0)]
    static let Moonrise = [
        UIColor(red: 0.85490197,
                green: 0.8862745,
                blue: 0.972549,
                alpha: 1.0),
        UIColor(red: 0.8392157,
                green: 0.6431373,
                blue: 0.6431373,
                alpha: 1.0)]
    static let Clouds = [
        UIColor(red: 0.9254902,
                green: 0.9137255,
                blue: 0.9019608,
                alpha: 1.0),
        UIColor(red: 1.0,
                green: 1.0,
                blue: 1.0,
                alpha: 1.0)]
    static let Stellar = [
        UIColor(red: 0.45490196,
                green: 0.45490196,
                blue: 0.7490196,
                alpha: 1.0),
        UIColor(red: 0.20392157,
                green: 0.5411765,
                blue: 0.78039217,
                alpha: 1.0)]
    static let Bourbon = [
        UIColor(red: 0.9254902,
                green: 0.43529412,
                blue: 0.4,
                alpha: 1.0),
        UIColor(red: 0.9529412,
                green: 0.6313726,
                blue: 0.5137255,
                alpha: 1.0)]
    static let CalmDarya = [
        UIColor(red: 0.37254903,
                green: 0.17254902,
                blue: 0.50980395,
                alpha: 1.0),
        UIColor(red: 0.28627452,
                green: 0.627451,
                blue: 0.6156863,
                alpha: 1.0)]
    static let Influenza = [
        UIColor(red: 0.7529412,
                green: 0.28235295,
                blue: 0.28235295,
                alpha: 1.0),
        UIColor(red: 0.28235295,
                green: 0.0,
                blue: 0.28235295,
                alpha: 1.0)]
    static let Shrimpy = [
        UIColor(red: 0.89411765,
                green: 0.22745098,
                blue: 0.08235294,
                alpha: 1.0),
        UIColor(red: 0.9019608,
                green: 0.32156864,
                blue: 0.27058825,
                alpha: 1.0)]
    static let Army = [
        UIColor(red: 0.25490198,
                green: 0.3019608,
                blue: 0.043137256,
                alpha: 1.0),
        UIColor(red: 0.44705883,
                green: 0.47843137,
                blue: 0.09019608,
                alpha: 1.0)]
    static let Miaka = [
        UIColor(red: 0.9882353,
                green: 0.20784314,
                blue: 0.29803923,
                alpha: 1.0),
        UIColor(red: 0.039215688,
                green: 0.7490196,
                blue: 0.7372549,
                alpha: 1.0)]
    static let PinotNoir = [
        UIColor(red: 0.29411766,
                green: 0.42352942,
                blue: 0.7176471,
                alpha: 1.0),
        UIColor(red: 0.09411765,
                green: 0.15686275,
                blue: 0.28235295,
                alpha: 1.0)]
    static let DayTripper = [
        UIColor(red: 0.972549,
                green: 0.34117648,
                blue: 0.6509804,
                alpha: 1.0),
        UIColor(red: 1.0,
                green: 0.34509805,
                blue: 0.34509805,
                alpha: 1.0)]
    static let Namn = [
        UIColor(red: 0.654902,
                green: 0.21568628,
                blue: 0.21568628,
                alpha: 1.0),
        UIColor(red: 0.47843137,
                green: 0.15686275,
                blue: 0.15686275,
                alpha: 1.0)]
    static let BlurryBeach = [
        UIColor(red: 0.8352941,
                green: 0.2,
                blue: 0.4117647,
                alpha: 1.0),
        UIColor(red: 0.79607844,
                green: 0.6784314,
                blue: 0.42745098,
                alpha: 1.0)]
    static let Vasily = [
        UIColor(red: 0.9137255,
                green: 0.827451,
                blue: 0.38431373,
                alpha: 1.0),
        UIColor(red: 0.2,
                green: 0.2,
                blue: 0.2,
                alpha: 1.0)]
    static let ALostMemory = [
        UIColor(red: 0.87058824,
                green: 0.38431373,
                blue: 0.38431373,
                alpha: 1.0),
        UIColor(red: 1.0,
                green: 0.72156864,
                blue: 0.54901963,
                alpha: 1.0)]
    static let Petrichor = [
        UIColor(red: 0.4,
                green: 0.4,
                blue: 0.0,
                alpha: 1.0),
        UIColor(red: 0.6,
                green: 0.6,
                blue: 0.4,
                alpha: 1.0)]
    static let Jonquil = [
        UIColor(red: 1.0,
                green: 0.93333334,
                blue: 0.93333334,
                alpha: 1.0),
        UIColor(red: 0.8666667,
                green: 0.9372549,
                blue: 0.73333335,
                alpha: 1.0)]
    static let SiriusTamed = [
        UIColor(red: 0.9372549,
                green: 0.9372549,
                blue: 0.73333335,
                alpha: 1.0),
        UIColor(red: 0.83137256,
                green: 0.827451,
                blue: 0.8666667,
                alpha: 1.0)]
    static let Kyoto = [
        UIColor(red: 0.7607843,
                green: 0.08235294,
                blue: 0.0,
                alpha: 1.0),
        UIColor(red: 1.0,
                green: 0.77254903,
                blue: 0.0,
                alpha: 1.0)]
    static let MistyMeadow = [
        UIColor(red: 0.12941177,
                green: 0.37254903,
                blue: 0.0,
                alpha: 1.0),
        UIColor(red: 0.89411765,
                green: 0.89411765,
                blue: 0.8509804,
                alpha: 1.0)]
    static let Aqualicious = [
        UIColor(red: 0.3137255,
                green: 0.7882353,
                blue: 0.7647059,
                alpha: 1.0),
        UIColor(red: 0.5882353,
                green: 0.87058824,
                blue: 0.85490197,
                alpha: 1.0)]
    static let Moor = [
        UIColor(red: 0.38039216,
                green: 0.38039216,
                blue: 0.38039216,
                alpha: 1.0),
        UIColor(red: 0.60784316,
                green: 0.77254903,
                blue: 0.7647059,
                alpha: 1.0)]
    static let Almost = [
        UIColor(red: 0.8666667,
                green: 0.8392157,
                blue: 0.9529412,
                alpha: 1.0),
        UIColor(red: 0.98039216,
                green: 0.6745098,
                blue: 0.65882355,
                alpha: 1.0)]
    static let ForeverLost = [
        UIColor(red: 0.3647059,
                green: 0.25490198,
                blue: 0.34117648,
                alpha: 1.0),
        UIColor(red: 0.65882355,
                green: 0.7921569,
                blue: 0.7294118,
                alpha: 1.0)]
    static let Winter = [
        UIColor(red: 0.9019608,
                green: 0.85490197,
                blue: 0.85490197,
                alpha: 1.0),
        UIColor(red: 0.15294118,
                green: 0.2509804,
                blue: 0.27450982,
                alpha: 1.0)]
    static let Nelson = [
        UIColor(red: 0.9490196,
                green: 0.4392157,
                blue: 0.6117647,
                alpha: 1.0),
        UIColor(red: 1.0,
                green: 0.5803922,
                blue: 0.44705883,
                alpha: 1.0)]
    static let Autumn = [
        UIColor(red: 0.85490197,
                green: 0.8235294,
                blue: 0.6,
                alpha: 1.0),
        UIColor(red: 0.6901961,
                green: 0.85490197,
                blue: 0.7254902,
                alpha: 1.0)]
    static let Candy = [
        UIColor(red: 0.827451,
                green: 0.58431375,
                blue: 0.60784316,
                alpha: 1.0),
        UIColor(red: 0.7490196,
                green: 0.9019608,
                blue: 0.7294118,
                alpha: 1.0)]
    static let Reef = [
        UIColor(red: 0.0,
                green: 0.8235294,
                blue: 1.0,
                alpha: 1.0),
        UIColor(red: 0.22745098,
                green: 0.48235294,
                blue: 0.8352941,
                alpha: 1.0)]
    static let TheStrain = [
        UIColor(red: 0.5294118,
                green: 0.0,
                blue: 0.0,
                alpha: 1.0),
        UIColor(red: 0.09803922,
                green: 0.039215688,
                blue: 0.019607844,
                alpha: 1.0)]
    static let DirtyFog = [
        UIColor(red: 0.7254902,
                green: 0.5764706,
                blue: 0.8392157,
                alpha: 1.0),
        UIColor(red: 0.54901963,
                green: 0.6509804,
                blue: 0.85882354,
                alpha: 1.0)]
    static let Earthly = [
        UIColor(red: 0.39215687,
                green: 0.5686275,
                blue: 0.4509804,
                alpha: 1.0),
        UIColor(red: 0.85882354,
                green: 0.8352941,
                blue: 0.6431373,
                alpha: 1.0)]
    static let Virgin = [
        UIColor(red: 0.7882353,
                green: 1.0,
                blue: 0.7490196,
                alpha: 1.0),
        UIColor(red: 1.0,
                green: 0.6862745,
                blue: 0.7411765,
                alpha: 1.0)]
    static let Ash = [
        UIColor(red: 0.3764706,
                green: 0.42352942,
                blue: 0.53333336,
                alpha: 1.0),
        UIColor(red: 0.24705882,
                green: 0.29803923,
                blue: 0.41960785,
                alpha: 1.0)]
    static let Cherryblossoms = [
        UIColor(red: 0.9843137,
                green: 0.827451,
                blue: 0.9137255,
                alpha: 1.0),
        UIColor(red: 0.73333335,
                green: 0.21568628,
                blue: 0.49019608,
                alpha: 1.0)]
    static let Parklife = [
        UIColor(red: 0.6784314,
                green: 0.81960785,
                blue: 0.0,
                alpha: 1.0),
        UIColor(red: 0.48235294,
                green: 0.57254905,
                blue: 0.039215688,
                alpha: 1.0)]
    static let DanceToForget = [
        UIColor(red: 1.0,
                green: 0.30588236,
                blue: 0.3137255,
                alpha: 1.0),
        UIColor(red: 0.9764706,
                green: 0.83137256,
                blue: 0.13725491,
                alpha: 1.0)]
    static let Starfall = [
        UIColor(red: 0.9411765,
                green: 0.7607843,
                blue: 0.48235294,
                alpha: 1.0),
        UIColor(red: 0.29411766,
                green: 0.07058824,
                blue: 0.28235295,
                alpha: 1.0)]
    static let RedMist = [
        UIColor(red: 0.0,
                green: 0.0,
                blue: 0.0,
                alpha: 1.0),
        UIColor(red: 0.90588236,
                green: 0.29803923,
                blue: 0.23529412,
                alpha: 1.0)]
    static let TealLove = [
        UIColor(red: 0.6666667,
                green: 1.0,
                blue: 0.6627451,
                alpha: 1.0),
        UIColor(red: 0.06666667,
                green: 1.0,
                blue: 0.7411765,
                alpha: 1.0)]
    static let NeonLife = [
        UIColor(red: 0.7019608,
                green: 1.0,
                blue: 0.67058825,
                alpha: 1.0),
        UIColor(red: 0.07058824,
                green: 1.0,
                blue: 0.96862745,
                alpha: 1.0)]
    static let ManofSteel = [
        UIColor(red: 0.47058824,
                green: 0.007843138,
                blue: 0.023529412,
                alpha: 1.0),
        UIColor(red: 0.023529412,
                green: 0.06666667,
                blue: 0.38039216,
                alpha: 1.0)]
    static let Amethyst = [
        UIColor(red: 0.6156863,
                green: 0.3137255,
                blue: 0.73333335,
                alpha: 1.0),
        UIColor(red: 0.43137255,
                green: 0.28235295,
                blue: 0.6666667,
                alpha: 1.0)]
    static let CheerUpEmoKid = [
        UIColor(red: 0.33333334,
                green: 0.38431373,
                blue: 0.4392157,
                alpha: 1.0),
        UIColor(red: 1.0,
                green: 0.41960785,
                blue: 0.41960785,
                alpha: 1.0)]
    static let Shore = [
        UIColor(red: 0.4392157,
                green: 0.88235295,
                blue: 0.9607843,
                alpha: 1.0),
        UIColor(red: 1.0,
                green: 0.81960785,
                blue: 0.5803922,
                alpha: 1.0)]
    static let FacebookMessenger = [
        UIColor(red: 0.0,
                green: 0.7764706,
                blue: 1.0,
                alpha: 1.0),
        UIColor(red: 0.0,
                green: 0.44705883,
                blue: 1.0,
                alpha: 1.0)]
    static let SoundCloud = [
        UIColor(red: 0.99607843,
                green: 0.54901963,
                blue: 0.0,
                alpha: 1.0),
        UIColor(red: 0.972549,
                green: 0.21176471,
                blue: 0.0,
                alpha: 1.0)]
    static let Behongo = [
        UIColor(red: 0.32156864,
                green: 0.7607843,
                blue: 0.20392157,
                alpha: 1.0),
        UIColor(red: 0.023529412,
                green: 0.09019608,
                blue: 0.0,
                alpha: 1.0)]
    static let ServQuick = [
        UIColor(red: 0.28235295,
                green: 0.33333334,
                blue: 0.3882353,
                alpha: 1.0),
        UIColor(red: 0.16078432,
                green: 0.19607843,
                blue: 0.23529412,
                alpha: 1.0)]
    static let Friday = [
        UIColor(red: 0.5137255,
                green: 0.6431373,
                blue: 0.83137256,
                alpha: 1.0),
        UIColor(red: 0.7137255,
                green: 0.9843137,
                blue: 1.0,
                alpha: 1.0)]
    static let Martini = [
        UIColor(red: 0.99215686,
                green: 0.9882353,
                blue: 0.2784314,
                alpha: 1.0),
        UIColor(red: 0.14117648,
                green: 0.99607843,
                blue: 0.25490198,
                alpha: 1.0)]
    static let MetallicToad = [
        UIColor(red: 0.67058825,
                green: 0.7294118,
                blue: 0.67058825,
                alpha: 1.0),
        UIColor(red: 1.0,
                green: 1.0,
                blue: 1.0,
                alpha: 1.0)]
    static let BetweenTheClouds = [
        UIColor(red: 0.4509804,
                green: 0.78431374,
                blue: 0.6627451,
                alpha: 1.0),
        UIColor(red: 0.21568628,
                green: 0.23137255,
                blue: 0.26666668,
                alpha: 1.0)]
    static let CrazyOrangeI = [
        UIColor(red: 0.827451,
                green: 0.5137255,
                blue: 0.07058824,
                alpha: 1.0),
        UIColor(red: 0.65882355,
                green: 0.19607843,
                blue: 0.4745098,
                alpha: 1.0)]
    static let Hersheys = [
        UIColor(red: 0.11764706,
                green: 0.07450981,
                blue: 0.047058824,
                alpha: 1.0),
        UIColor(red: 0.6039216,
                green: 0.5176471,
                blue: 0.47058824,
                alpha: 1.0)]
    static let TalkingToMiceElf = [
        UIColor(red: 0.5803922,
                green: 0.5568628,
                blue: 0.6,
                alpha: 1.0),
        UIColor(red: 0.18039216,
                green: 0.078431375,
                blue: 0.21568628,
                alpha: 1.0)]
    static let PurpleBliss = [
        UIColor(red: 0.21176471,
                green: 0.0,
                blue: 0.2,
                alpha: 1.0),
        UIColor(red: 0.043137256,
                green: 0.5294118,
                blue: 0.5764706,
                alpha: 1.0)]
    static let Predawn = [
        UIColor(red: 1.0,
                green: 0.6313726,
                blue: 0.49803922,
                alpha: 1.0),
        UIColor(red: 0.0,
                green: 0.13333334,
                blue: 0.24313726,
                alpha: 1.0)]
    static let EndlessRiver = [
        UIColor(red: 0.2627451,
                green: 0.80784315,
                blue: 0.63529414,
                alpha: 1.0),
        UIColor(red: 0.09411765,
                green: 0.3529412,
                blue: 0.6156863,
                alpha: 1.0)]
    static let PastelOrangeattheSun = [
        UIColor(red: 1.0,
                green: 0.7019608,
                blue: 0.2784314,
                alpha: 1.0),
        UIColor(red: 1.0,
                green: 0.8,
                blue: 0.2,
                alpha: 1.0)]
    static let Twitch = [
        UIColor(red: 0.39215687,
                green: 0.25490198,
                blue: 0.64705884,
                alpha: 1.0),
        UIColor(red: 0.16470589,
                green: 0.03137255,
                blue: 0.27058825,
                alpha: 1.0)]
    static let Atlas = [
        UIColor(red: 0.99607843,
                green: 0.6745098,
                blue: 0.36862746,
                alpha: 1.0),
        UIColor(red: 0.78039217,
                green: 0.4745098,
                blue: 0.8156863,
                alpha: 1.0),
        UIColor(red: 0.29411766,
                green: 0.7529412,
                blue: 0.78431374,
                alpha: 1.0)]
    static let Instagram = [
        UIColor(red: 0.5137255,
                green: 0.22745098,
                blue: 0.7058824,
                alpha: 1.0),
        UIColor(red: 0.99215686,
                green: 0.11372549,
                blue: 0.11372549,
                alpha: 1.0),
        UIColor(red: 0.9882353,
                green: 0.6901961,
                blue: 0.27058825,
                alpha: 1.0)]
    static let Flickr = [
        UIColor(red: 1.0,
                green: 0.0,
                blue: 0.5176471,
                alpha: 1.0),
        UIColor(red: 0.2,
                green: 0.0,
                blue: 0.105882354,
                alpha: 1.0)]
    static let Vine = [
        UIColor(red: 0.0,
                green: 0.7490196,
                blue: 0.56078434,
                alpha: 1.0),
        UIColor(red: 0.0,
                green: 0.08235294,
                blue: 0.0627451,
                alpha: 1.0)]
    static let Turquoiseflow = [
        UIColor(red: 0.07450981,
                green: 0.41568628,
                blue: 0.5411765,
                alpha: 1.0),
        UIColor(red: 0.14901961,
                green: 0.47058824,
                blue: 0.44313726,
                alpha: 1.0)]
    static let Portrait = [
        UIColor(red: 0.5568628,
                green: 0.61960787,
                blue: 0.67058825,
                alpha: 1.0),
        UIColor(red: 0.93333334,
                green: 0.9490196,
                blue: 0.9529412,
                alpha: 1.0)]
    static let VirginAmerica = [
        UIColor(red: 0.48235294,
                green: 0.2627451,
                blue: 0.5921569,
                alpha: 1.0),
        UIColor(red: 0.8627451,
                green: 0.14117648,
                blue: 0.1882353,
                alpha: 1.0)]
    static let KokoCaramel = [
        UIColor(red: 0.81960785,
                green: 0.5686275,
                blue: 0.23529412,
                alpha: 1.0),
        UIColor(red: 1.0,
                green: 0.81960785,
                blue: 0.5803922,
                alpha: 1.0)]
    static let FreshTurboscent = [
        UIColor(red: 0.94509804,
                green: 0.9490196,
                blue: 0.70980394,
                alpha: 1.0),
        UIColor(red: 0.07450981,
                green: 0.3137255,
                blue: 0.34509805,
                alpha: 1.0)]
    static let Greentodark = [
        UIColor(red: 0.41568628,
                green: 0.5686275,
                blue: 0.07450981,
                alpha: 1.0),
        UIColor(red: 0.078431375,
                green: 0.08235294,
                blue: 0.09019608,
                alpha: 1.0)]
    static let Ukraine = [
        UIColor(red: 0.0,
                green: 0.30980393,
                blue: 0.9764706,
                alpha: 1.0),
        UIColor(red: 1.0,
                green: 0.9764706,
                blue: 0.29803923,
                alpha: 1.0)]
    static let Curiosityblue = [
        UIColor(red: 0.32156864,
                green: 0.32156864,
                blue: 0.32156864,
                alpha: 1.0),
        UIColor(red: 0.23921569,
                green: 0.44705883,
                blue: 0.7058824,
                alpha: 1.0)]
    static let DarkKnight = [
        UIColor(red: 0.7294118,
                green: 0.54509807,
                blue: 0.007843138,
                alpha: 1.0),
        UIColor(red: 0.09411765,
                green: 0.09411765,
                blue: 0.09411765,
                alpha: 1.0)]
    static let Piglet = [
        UIColor(red: 0.93333334,
                green: 0.6117647,
                blue: 0.654902,
                alpha: 1.0),
        UIColor(red: 1.0,
                green: 0.8666667,
                blue: 0.88235295,
                alpha: 1.0)]
    static let Lizard = [
        UIColor(red: 0.1882353,
                green: 0.2627451,
                blue: 0.32156864,
                alpha: 1.0),
        UIColor(red: 0.84313726,
                green: 0.8235294,
                blue: 0.8,
                alpha: 1.0)]
    static let SagePersuasion = [
        UIColor(red: 0.8,
                green: 0.8,
                blue: 0.69803923,
                alpha: 1.0),
        UIColor(red: 0.45882353,
                green: 0.45882353,
                blue: 0.09803922,
                alpha: 1.0)]
    static let BetweenNightandDay = [
        UIColor(red: 0.17254902,
                green: 0.24313726,
                blue: 0.3137255,
                alpha: 1.0),
        UIColor(red: 0.20392157,
                green: 0.59607846,
                blue: 0.85882354,
                alpha: 1.0)]
    static let Timber = [
        UIColor(red: 0.9882353,
                green: 0.0,
                blue: 1.0,
                alpha: 1.0),
        UIColor(red: 0.0,
                green: 0.85882354,
                blue: 0.87058824,
                alpha: 1.0)]
    static let Passion = [
        UIColor(red: 0.8980392,
                green: 0.22352941,
                blue: 0.20784314,
                alpha: 1.0),
        UIColor(red: 0.8901961,
                green: 0.3647059,
                blue: 0.35686275,
                alpha: 1.0)]
    static let ClearSky = [
        UIColor(red: 0.0,
                green: 0.36078432,
                blue: 0.5921569,
                alpha: 1.0),
        UIColor(red: 0.21176471,
                green: 0.21568628,
                blue: 0.58431375,
                alpha: 1.0)]
    static let MasterCard = [
        UIColor(red: 0.95686275,
                green: 0.41960785,
                blue: 0.27058825,
                alpha: 1.0),
        UIColor(red: 0.93333334,
                green: 0.65882355,
                blue: 0.28627452,
                alpha: 1.0)]
    static let BackToEarth = [
        UIColor(red: 0.0,
                green: 0.7882353,
                blue: 1.0,
                alpha: 1.0),
        UIColor(red: 0.57254905,
                green: 0.99607843,
                blue: 0.6156863,
                alpha: 1.0)]
    static let DeepPurple = [
        UIColor(red: 0.40392157,
                green: 0.22745098,
                blue: 0.7176471,
                alpha: 1.0),
        UIColor(red: 0.31764707,
                green: 0.1764706,
                blue: 0.65882355,
                alpha: 1.0)]
    static let LittleLeaf = [
        UIColor(red: 0.4627451,
                green: 0.72156864,
                blue: 0.32156864,
                alpha: 1.0),
        UIColor(red: 0.5529412,
                green: 0.7607843,
                blue: 0.43529412,
                alpha: 1.0)]
    static let Netflix = [
        UIColor(red: 0.5568628,
                green: 0.05490196,
                blue: 0.0,
                alpha: 1.0),
        UIColor(red: 0.12156863,
                green: 0.10980392,
                blue: 0.09411765,
                alpha: 1.0)]
    static let LightOrange = [
        UIColor(red: 1.0,
                green: 0.7176471,
                blue: 0.36862746,
                alpha: 1.0),
        UIColor(red: 0.92941177,
                green: 0.56078434,
                blue: 0.011764706,
                alpha: 1.0)]
    static let GreenandBlue = [
        UIColor(red: 0.7607843,
                green: 0.8980392,
                blue: 0.6117647,
                alpha: 1.0),
        UIColor(red: 0.39215687,
                green: 0.7019608,
                blue: 0.95686275,
                alpha: 1.0)]
    static let Poncho = [
        UIColor(red: 0.2509804,
                green: 0.22745098,
                blue: 0.24313726,
                alpha: 1.0),
        UIColor(red: 0.74509805,
                green: 0.34509805,
                blue: 0.4117647,
                alpha: 1.0)]
    static let BacktotheFuture = [
        UIColor(red: 0.7529412,
                green: 0.14117648,
                blue: 0.14509805,
                alpha: 1.0),
        UIColor(red: 0.9411765,
                green: 0.79607844,
                blue: 0.20784314,
                alpha: 1.0)]
    static let Blush = [
        UIColor(red: 0.69803923,
                green: 0.27058825,
                blue: 0.57254905,
                alpha: 1.0),
        UIColor(red: 0.94509804,
                green: 0.37254903,
                blue: 0.4745098,
                alpha: 1.0)]
    static let Inbox = [
        UIColor(red: 0.27058825,
                green: 0.49803922,
                blue: 0.7921569,
                alpha: 1.0),
        UIColor(red: 0.3372549,
                green: 0.5686275,
                blue: 0.78431374,
                alpha: 1.0)]
    static let Purplin = [
        UIColor(red: 0.41568628,
                green: 0.1882353,
                blue: 0.5764706,
                alpha: 1.0),
        UIColor(red: 0.627451,
                green: 0.26666668,
                blue: 1.0,
                alpha: 1.0)]
    static let PaleWood = [
        UIColor(red: 0.91764706,
                green: 0.8039216,
                blue: 0.6392157,
                alpha: 1.0),
        UIColor(red: 0.8392157,
                green: 0.68235296,
                blue: 0.48235294,
                alpha: 1.0)]
    static let Haikus = [
        UIColor(red: 0.99215686,
                green: 0.45490196,
                blue: 0.42352942,
                alpha: 1.0),
        UIColor(red: 1.0,
                green: 0.5647059,
                blue: 0.40784314,
                alpha: 1.0)]
    static let Pizelex = [
        UIColor(red: 0.06666667,
                green: 0.2627451,
                blue: 0.34117648,
                alpha: 1.0),
        UIColor(red: 0.9490196,
                green: 0.5803922,
                blue: 0.57254905,
                alpha: 1.0)]
    static let Joomla = [
        UIColor(red: 0.11764706,
                green: 0.23529412,
                blue: 0.44705883,
                alpha: 1.0),
        UIColor(red: 0.16470589,
                green: 0.32156864,
                blue: 0.59607846,
                alpha: 1.0)]
    static let Christmas = [
        UIColor(red: 0.18431373,
                green: 0.4509804,
                blue: 0.21176471,
                alpha: 1.0),
        UIColor(red: 0.6666667,
                green: 0.22745098,
                blue: 0.21960784,
                alpha: 1.0)]
    static let MinnesotaVikings = [
        UIColor(red: 0.3372549,
                green: 0.078431375,
                blue: 0.6901961,
                alpha: 1.0),
        UIColor(red: 0.85882354,
                green: 0.8392157,
                blue: 0.36078432,
                alpha: 1.0)]
    static let MiamiDolphins = [
        UIColor(red: 0.3019608,
                green: 0.627451,
                blue: 0.6901961,
                alpha: 1.0),
        UIColor(red: 0.827451,
                green: 0.6156863,
                blue: 0.21960784,
                alpha: 1.0)]
    static let Forest = [
        UIColor(red: 0.3529412,
                green: 0.24705882,
                blue: 0.21568628,
                alpha: 1.0),
        UIColor(red: 0.17254902,
                green: 0.46666667,
                blue: 0.26666668,
                alpha: 1.0)]
    static let Nighthawk = [
        UIColor(red: 0.16078432,
                green: 0.5019608,
                blue: 0.7254902,
                alpha: 1.0),
        UIColor(red: 0.17254902,
                green: 0.24313726,
                blue: 0.3137255,
                alpha: 1.0)]
    static let Superman = [
        UIColor(red: 0.0,
                green: 0.6,
                blue: 0.96862745,
                alpha: 1.0),
        UIColor(red: 0.94509804,
                green: 0.09019608,
                blue: 0.07058824,
                alpha: 1.0)]
    static let Suzy = [
        UIColor(red: 0.5137255,
                green: 0.3019608,
                blue: 0.60784316,
                alpha: 1.0),
        UIColor(red: 0.8156863,
                green: 0.30588236,
                blue: 0.8392157,
                alpha: 1.0)]
    static let DarkSkies = [
        UIColor(red: 0.29411766,
                green: 0.4745098,
                blue: 0.6313726,
                alpha: 1.0),
        UIColor(red: 0.15686275,
                green: 0.24313726,
                blue: 0.31764707,
                alpha: 1.0)]
    static let DeepSpace = [
        UIColor(red: 0.0,
                green: 0.0,
                blue: 0.0,
                alpha: 1.0),
        UIColor(red: 0.2627451,
                green: 0.2627451,
                blue: 0.2627451,
                alpha: 1.0)]
    static let Decent = [
        UIColor(red: 0.29803923,
                green: 0.6313726,
                blue: 0.6862745,
                alpha: 1.0),
        UIColor(red: 0.76862746,
                green: 0.8784314,
                blue: 0.8980392,
                alpha: 1.0)]
    static let ColorsOfSky = [
        UIColor(red: 0.8784314,
                green: 0.91764706,
                blue: 0.9882353,
                alpha: 1.0),
        UIColor(red: 0.8117647,
                green: 0.87058824,
                blue: 0.9529412,
                alpha: 1.0)]
    static let PurpleWhite = [
        UIColor(red: 0.7294118,
                green: 0.3254902,
                blue: 0.4392157,
                alpha: 1.0),
        UIColor(red: 0.95686275,
                green: 0.8862745,
                blue: 0.84705883,
                alpha: 1.0)]
    static let Ali = [
        UIColor(red: 1.0,
                green: 0.29411766,
                blue: 0.12156863,
                alpha: 1.0),
        UIColor(red: 0.12156863,
                green: 0.8666667,
                blue: 1.0,
                alpha: 1.0)]
    static let Alihossein = [
        UIColor(red: 0.96862745,
                green: 1.0,
                blue: 0.0,
                alpha: 1.0),
        UIColor(red: 0.85882354,
                green: 0.21176471,
                blue: 0.6431373,
                alpha: 1.0)]
    static let Shahabi = [
        UIColor(red: 0.65882355,
                green: 0.0,
                blue: 0.46666667,
                alpha: 1.0),
        UIColor(red: 0.4,
                green: 1.0,
                blue: 0.0,
                alpha: 1.0)]
    static let RedOcean = [
        UIColor(red: 0.11372549,
                green: 0.2627451,
                blue: 0.3137255,
                alpha: 1.0),
        UIColor(red: 0.6431373,
                green: 0.22352941,
                blue: 0.19215687,
                alpha: 1.0)]
    static let Tranquil = [
        UIColor(red: 0.93333334,
                green: 0.8039216,
                blue: 0.6392157,
                alpha: 1.0),
        UIColor(red: 0.9372549,
                green: 0.38431373,
                blue: 0.62352943,
                alpha: 1.0)]
    static let Transfile = [
        UIColor(red: 0.08627451,
                green: 0.7490196,
                blue: 0.99215686,
                alpha: 1.0),
        UIColor(red: 0.79607844,
                green: 0.1882353,
                blue: 0.4,
                alpha: 1.0)]
    static let Sylvia = [
        UIColor(red: 1.0,
                green: 0.29411766,
                blue: 0.12156863,
                alpha: 1.0),
        UIColor(red: 1.0,
                green: 0.5647059,
                blue: 0.40784314,
                alpha: 1.0)]
    static let SweetMorning = [
        UIColor(red: 1.0,
                green: 0.37254903,
                blue: 0.42745098,
                alpha: 1.0),
        UIColor(red: 1.0,
                green: 0.7647059,
                blue: 0.44313726,
                alpha: 1.0)]
    static let Politics = [
        UIColor(red: 0.12941177,
                green: 0.5882353,
                blue: 0.9529412,
                alpha: 1.0),
        UIColor(red: 0.95686275,
                green: 0.2627451,
                blue: 0.21176471,
                alpha: 1.0)]
    static let BrightVault = [
        UIColor(red: 0.0,
                green: 0.8235294,
                blue: 1.0,
                alpha: 1.0),
        UIColor(red: 0.57254905,
                green: 0.5529412,
                blue: 0.67058825,
                alpha: 1.0)]
    static let SolidVault = [
        UIColor(red: 0.22745098,
                green: 0.48235294,
                blue: 0.8352941,
                alpha: 1.0),
        UIColor(red: 0.22745098,
                green: 0.3764706,
                blue: 0.4509804,
                alpha: 1.0)]
    static let Sunset = [
        UIColor(red: 0.043137256,
                green: 0.28235295,
                blue: 0.41960785,
                alpha: 1.0),
        UIColor(red: 0.9607843,
                green: 0.38431373,
                blue: 0.09019608,
                alpha: 1.0)]
    static let GrapefruitSunset = [
        UIColor(red: 0.9137255,
                green: 0.39215687,
                blue: 0.2627451,
                alpha: 1.0),
        UIColor(red: 0.5647059,
                green: 0.30588236,
                blue: 0.58431375,
                alpha: 1.0)]
    static let DeepSeaSpace = [
        UIColor(red: 0.17254902,
                green: 0.24313726,
                blue: 0.3137255,
                alpha: 1.0),
        UIColor(red: 0.29803923,
                green: 0.6313726,
                blue: 0.6862745,
                alpha: 1.0)]
    static let Dusk = [
        UIColor(red: 0.17254902,
                green: 0.24313726,
                blue: 0.3137255,
                alpha: 1.0),
        UIColor(red: 0.99215686,
                green: 0.45490196,
                blue: 0.42352942,
                alpha: 1.0)]
    static let MinimalRed = [
        UIColor(red: 0.9411765,
                green: 0.0,
                blue: 0.0,
                alpha: 1.0),
        UIColor(red: 0.8627451,
                green: 0.15686275,
                blue: 0.11764706,
                alpha: 1.0)]
    static let Royal = [
        UIColor(red: 0.078431375,
                green: 0.11764706,
                blue: 0.1882353,
                alpha: 1.0),
        UIColor(red: 0.14117648,
                green: 0.23137255,
                blue: 0.33333334,
                alpha: 1.0)]
    static let Mauve = [
        UIColor(red: 0.25882354,
                green: 0.15294118,
                blue: 0.3529412,
                alpha: 1.0),
        UIColor(red: 0.4509804,
                green: 0.29411766,
                blue: 0.42745098,
                alpha: 1.0)]
    static let Frost = [
        UIColor(red: 0.0,
                green: 0.015686275,
                blue: 0.15686275,
                alpha: 1.0),
        UIColor(red: 0.0,
                green: 0.30588236,
                blue: 0.57254905,
                alpha: 1.0)]
    static let Lush = [
        UIColor(red: 0.3372549,
                green: 0.67058825,
                blue: 0.18431373,
                alpha: 1.0),
        UIColor(red: 0.65882355,
                green: 0.8784314,
                blue: 0.3882353,
                alpha: 1.0)]
    static let Firewatch = [
        UIColor(red: 0.79607844,
                green: 0.1764706,
                blue: 0.24313726,
                alpha: 1.0),
        UIColor(red: 0.9372549,
                green: 0.2784314,
                blue: 0.22745098,
                alpha: 1.0)]
    static let Sherbert = [
        UIColor(red: 0.96862745,
                green: 0.6156863,
                blue: 0.0,
                alpha: 1.0),
        UIColor(red: 0.39215687,
                green: 0.9529412,
                blue: 0.54901963,
                alpha: 1.0)]
    static let BloodRed = [
        UIColor(red: 0.972549,
                green: 0.3137255,
                blue: 0.19607843,
                alpha: 1.0),
        UIColor(red: 0.90588236,
                green: 0.21960784,
                blue: 0.15294118,
                alpha: 1.0)]
    static let SunontheHorizon = [
        UIColor(red: 0.9882353,
                green: 0.91764706,
                blue: 0.73333335,
                alpha: 1.0),
        UIColor(red: 0.972549,
                green: 0.70980394,
                blue: 0.0,
                alpha: 1.0)]
    static let IIITDelhi = [
        UIColor(red: 0.5019608,
                green: 0.5019608,
                blue: 0.5019608,
                alpha: 1.0),
        UIColor(red: 0.24705882,
                green: 0.6784314,
                blue: 0.65882355,
                alpha: 1.0)]
    static let Jupiter = [
        UIColor(red: 1.0,
                green: 0.84705883,
                blue: 0.60784316,
                alpha: 1.0),
        UIColor(red: 0.09803922,
                green: 0.32941177,
                blue: 0.48235294,
                alpha: 1.0)]
    static let ShadesofGrey = [
        UIColor(red: 0.7411765,
                green: 0.7647059,
                blue: 0.78039217,
                alpha: 1.0),
        UIColor(red: 0.17254902,
                green: 0.24313726,
                blue: 0.3137255,
                alpha: 1.0)]
    static let Dania = [
        UIColor(red: 0.74509805,
                green: 0.5764706,
                blue: 0.77254903,
                alpha: 1.0),
        UIColor(red: 0.48235294,
                green: 0.7764706,
                blue: 0.8,
                alpha: 1.0)]
    static let Limeade = [
        UIColor(red: 0.6313726,
                green: 1.0,
                blue: 0.80784315,
                alpha: 1.0),
        UIColor(red: 0.98039216,
                green: 1.0,
                blue: 0.81960785,
                alpha: 1.0)]
    static let Disco = [
        UIColor(red: 0.30588236,
                green: 0.8039216,
                blue: 0.76862746,
                alpha: 1.0),
        UIColor(red: 0.33333334,
                green: 0.38431373,
                blue: 0.4392157,
                alpha: 1.0)]
    static let LoveCouple = [
        UIColor(red: 0.22745098,
                green: 0.38039216,
                blue: 0.5254902,
                alpha: 1.0),
        UIColor(red: 0.5372549,
                green: 0.14509805,
                blue: 0.24313726,
                alpha: 1.0)]
    static let AzurePop = [
        UIColor(red: 0.9372549,
                green: 0.19607843,
                blue: 0.8509804,
                alpha: 1.0),
        UIColor(red: 0.5372549,
                green: 1.0,
                blue: 0.99215686,
                alpha: 1.0)]
    static let Nepal = [
        UIColor(red: 0.87058824,
                green: 0.38039216,
                blue: 0.38039216,
                alpha: 1.0),
        UIColor(red: 0.14901961,
                green: 0.34117648,
                blue: 0.92156863,
                alpha: 1.0)]
    static let CosmicFusion = [
        UIColor(red: 1.0,
                green: 0.0,
                blue: 0.8,
                alpha: 1.0),
        UIColor(red: 0.2,
                green: 0.2,
                blue: 0.6,
                alpha: 1.0)]
    static let Snapchat = [
        UIColor(red: 1.0,
                green: 0.9882353,
                blue: 0.0,
                alpha: 1.0),
        UIColor(red: 1.0,
                green: 1.0,
                blue: 1.0,
                alpha: 1.0)]
    static let EdsSunsetGradient = [
        UIColor(red: 1.0,
                green: 0.49411765,
                blue: 0.37254903,
                alpha: 1.0),
        UIColor(red: 0.99607843,
                green: 0.7058824,
                blue: 0.48235294,
                alpha: 1.0)]
    static let BradyBradyFunFun = [
        UIColor(red: 0.0,
                green: 0.7647059,
                blue: 1.0,
                alpha: 1.0),
        UIColor(red: 1.0,
                green: 1.0,
                blue: 0.10980392,
                alpha: 1.0)]
    static let BlackRos = [
        UIColor(red: 0.95686275,
                green: 0.76862746,
                blue: 0.9529412,
                alpha: 1.0),
        UIColor(red: 0.9882353,
                green: 0.40392157,
                blue: 0.98039216,
                alpha: 1.0)]
    static let sPurple = [
        UIColor(red: 0.25490198,
                green: 0.16078432,
                blue: 0.3529412,
                alpha: 1.0),
        UIColor(red: 0.18431373,
                green: 0.02745098,
                blue: 0.2627451,
                alpha: 1.0)]
    static let Radar = [
        UIColor(red: 0.654902,
                green: 0.4392157,
                blue: 0.9372549,
                alpha: 1.0),
        UIColor(red: 0.8117647,
                green: 0.54509807,
                blue: 0.9529412,
                alpha: 1.0),
        UIColor(red: 0.99215686,
                green: 0.7254902,
                blue: 0.60784316,
                alpha: 1.0)]
    static let IbizaSunset = [
        UIColor(red: 0.93333334,
                green: 0.03529412,
                blue: 0.4745098,
                alpha: 1.0),
        UIColor(red: 1.0,
                green: 0.41568628,
                blue: 0.0,
                alpha: 1.0)]
    static let Dawn = [
        UIColor(red: 0.9529412,
                green: 0.5647059,
                blue: 0.30980393,
                alpha: 1.0),
        UIColor(red: 0.23137255,
                green: 0.2627451,
                blue: 0.44313726,
                alpha: 1.0)]
    static let Mild = [
        UIColor(red: 0.40392157,
                green: 0.69803923,
                blue: 0.43529412,
                alpha: 1.0),
        UIColor(red: 0.29803923,
                green: 0.63529414,
                blue: 0.8039216,
                alpha: 1.0)]
    static let ViceCity = [
        UIColor(red: 0.20392157,
                green: 0.5803922,
                blue: 0.9019608,
                alpha: 1.0),
        UIColor(red: 0.9254902,
                green: 0.43137255,
                blue: 0.6784314,
                alpha: 1.0)]
    static let Jaipur = [
        UIColor(red: 0.85882354,
                green: 0.9019608,
                blue: 0.9647059,
                alpha: 1.0),
        UIColor(red: 0.77254903,
                green: 0.4745098,
                blue: 0.42745098,
                alpha: 1.0)]
    static let Jodhpur = [
        UIColor(red: 0.6117647,
                green: 0.9254902,
                blue: 0.9843137,
                alpha: 1.0),
        UIColor(red: 0.39607844,
                green: 0.78039217,
                blue: 0.96862745,
                alpha: 1.0),
        UIColor(red: 0.0,
                green: 0.32156864,
                blue: 0.83137256,
                alpha: 1.0)]
    static let CocoaaIce = [
        UIColor(red: 0.7529412,
                green: 0.7529412,
                blue: 0.6666667,
                alpha: 1.0),
        UIColor(red: 0.10980392,
                green: 0.9372549,
                blue: 1.0,
                alpha: 1.0)]
    static let EasyMed = [
        UIColor(red: 0.8627451,
                green: 0.8901961,
                blue: 0.35686275,
                alpha: 1.0),
        UIColor(red: 0.27058825,
                green: 0.7137255,
                blue: 0.28627452,
                alpha: 1.0)]
    static let RoseColoredLenses = [
        UIColor(red: 0.9098039,
                green: 0.79607844,
                blue: 0.7529412,
                alpha: 1.0),
        UIColor(red: 0.3882353,
                green: 0.43529412,
                blue: 0.6431373,
                alpha: 1.0)]
    static let WhatliesBeyond = [
        UIColor(red: 0.9411765,
                green: 0.9490196,
                blue: 0.9411765,
                alpha: 1.0),
        UIColor(red: 0.0,
                green: 0.047058824,
                blue: 0.2509804,
                alpha: 1.0)]
    static let Roseanna = [
        UIColor(red: 1.0,
                green: 0.6862745,
                blue: 0.7411765,
                alpha: 1.0),
        UIColor(red: 1.0,
                green: 0.7647059,
                blue: 0.627451,
                alpha: 1.0)]
    static let HoneyDew = [
        UIColor(red: 0.2627451,
                green: 0.7764706,
                blue: 0.6745098,
                alpha: 1.0),
        UIColor(red: 0.972549,
                green: 1.0,
                blue: 0.68235296,
                alpha: 1.0)]
    static let UndertheLake = [
        UIColor(red: 0.03529412,
                green: 0.1882353,
                blue: 0.15686275,
                alpha: 1.0),
        UIColor(red: 0.13725491,
                green: 0.47843137,
                blue: 0.34117648,
                alpha: 1.0)]
    static let TheBlueLagoon = [
        UIColor(red: 0.2627451,
                green: 0.7764706,
                blue: 0.6745098,
                alpha: 1.0),
        UIColor(red: 0.09803922,
                green: 0.08627451,
                blue: 0.32941177,
                alpha: 1.0)]
    static let CanYouFeelTheLoveTonight = [
        UIColor(red: 0.27058825,
                green: 0.40784314,
                blue: 0.8627451,
                alpha: 1.0),
        UIColor(red: 0.6901961,
                green: 0.41568628,
                blue: 0.7019608,
                alpha: 1.0)]
    static let VeryBlue = [
        UIColor(red: 0.019607844,
                green: 0.45882353,
                blue: 0.9019608,
                alpha: 1.0),
        UIColor(red: 0.007843138,
                green: 0.105882354,
                blue: 0.4745098,
                alpha: 1.0)]
    static let LoveandLiberty = [
        UIColor(red: 0.1254902,
                green: 0.003921569,
                blue: 0.13333334,
                alpha: 1.0),
        UIColor(red: 0.43529412,
                green: 0.0,
                blue: 0.0,
                alpha: 1.0)]
    static let Orca = [
        UIColor(red: 0.26666668,
                green: 0.627451,
                blue: 0.5529412,
                alpha: 1.0),
        UIColor(red: 0.03529412,
                green: 0.21176471,
                blue: 0.21568628,
                alpha: 1.0)]
    static let Venice = [
        UIColor(red: 0.38039216,
                green: 0.5647059,
                blue: 0.9098039,
                alpha: 1.0),
        UIColor(red: 0.654902,
                green: 0.7490196,
                blue: 0.9098039,
                alpha: 1.0)]
    static let PacificDream = [
        UIColor(red: 0.20392157,
                green: 0.9098039,
                blue: 0.61960787,
                alpha: 1.0),
        UIColor(red: 0.05882353,
                green: 0.20392157,
                blue: 0.2627451,
                alpha: 1.0)]
    static let LearningandLeading = [
        UIColor(red: 0.96862745,
                green: 0.5921569,
                blue: 0.11764706,
                alpha: 1.0),
        UIColor(red: 1.0,
                green: 0.8235294,
                blue: 0.0,
                alpha: 1.0)]
    static let Celestial = [
        UIColor(red: 0.7647059,
                green: 0.21568628,
                blue: 0.39215687,
                alpha: 1.0),
        UIColor(red: 0.11372549,
                green: 0.14901961,
                blue: 0.44313726,
                alpha: 1.0)]
    static let Purplepine = [
        UIColor(red: 0.1254902,
                green: 0.0,
                blue: 0.17254902,
                alpha: 1.0),
        UIColor(red: 0.79607844,
                green: 0.7058824,
                blue: 0.83137256,
                alpha: 1.0)]
    static let Shalala = [
        UIColor(red: 0.8392157,
                green: 0.42745098,
                blue: 0.45882353,
                alpha: 1.0),
        UIColor(red: 0.8862745,
                green: 0.58431375,
                blue: 0.5294118,
                alpha: 1.0)]
    static let Mini = [
        UIColor(red: 0.1882353,
                green: 0.9098039,
                blue: 0.7490196,
                alpha: 1.0),
        UIColor(red: 1.0,
                green: 0.50980395,
                blue: 0.20784314,
                alpha: 1.0)]
    static let Maldives = [
        UIColor(red: 0.69803923,
                green: 0.99607843,
                blue: 0.98039216,
                alpha: 1.0),
        UIColor(red: 0.05490196,
                green: 0.8235294,
                blue: 0.96862745,
                alpha: 1.0)]
    static let Cinnamint = [
        UIColor(red: 0.2901961,
                green: 0.7607843,
                blue: 0.6039216,
                alpha: 1.0),
        UIColor(red: 0.7411765,
                green: 1.0,
                blue: 0.9529412,
                alpha: 1.0)]
    static let Html = [
        UIColor(red: 0.89411765,
                green: 0.3019608,
                blue: 0.14901961,
                alpha: 1.0),
        UIColor(red: 0.94509804,
                green: 0.39607844,
                blue: 0.16078432,
                alpha: 1.0)]
    static let Coal = [
        UIColor(red: 0.92156863,
                green: 0.34117648,
                blue: 0.34117648,
                alpha: 1.0),
        UIColor(red: 0.0,
                green: 0.0,
                blue: 0.0,
                alpha: 1.0)]
    static let Sunkist = [
        UIColor(red: 0.9490196,
                green: 0.6,
                blue: 0.2901961,
                alpha: 1.0),
        UIColor(red: 0.9490196,
                green: 0.7882353,
                blue: 0.29803923,
                alpha: 1.0)]
    static let BlueSkies = [
        UIColor(red: 0.3372549,
                green: 0.8,
                blue: 0.9490196,
                alpha: 1.0),
        UIColor(red: 0.18431373,
                green: 0.5019608,
                blue: 0.92941177,
                alpha: 1.0)]
    static let ChittyChittyBangBang = [
        UIColor(red: 0.0,
                green: 0.4745098,
                blue: 0.5686275,
                alpha: 1.0),
        UIColor(red: 0.47058824,
                green: 1.0,
                blue: 0.8392157,
                alpha: 1.0)]
    static let VisionsofGrandeur = [
        UIColor(red: 0.0,
                green: 0.0,
                blue: 0.27450982,
                alpha: 1.0),
        UIColor(red: 0.10980392,
                green: 0.70980394,
                blue: 0.8784314,
                alpha: 1.0)]
    static let CrystalClear = [
        UIColor(red: 0.08235294,
                green: 0.6,
                blue: 0.34117648,
                alpha: 1.0),
        UIColor(red: 0.08235294,
                green: 0.34117648,
                blue: 0.6,
                alpha: 1.0)]
    static let Mello = [
        UIColor(red: 0.7529412,
                green: 0.22352941,
                blue: 0.16862746,
                alpha: 1.0),
        UIColor(red: 0.5568628,
                green: 0.26666668,
                blue: 0.6784314,
                alpha: 1.0)]
    static let CompareNow = [
        UIColor(red: 0.9372549,
                green: 0.23137255,
                blue: 0.21176471,
                alpha: 1.0),
        UIColor(red: 1.0,
                green: 1.0,
                blue: 1.0,
                alpha: 1.0)]
    static let Meridian = [
        UIColor(red: 0.15686275,
                green: 0.23529412,
                blue: 0.5254902,
                alpha: 1.0),
        UIColor(red: 0.27058825,
                green: 0.63529414,
                blue: 0.2784314,
                alpha: 1.0)]
    static let Relay = [
        UIColor(red: 0.22745098,
                green: 0.10980392,
                blue: 0.44313726,
                alpha: 1.0),
        UIColor(red: 0.84313726,
                green: 0.42745098,
                blue: 0.46666667,
                alpha: 1.0),
        UIColor(red: 1.0,
                green: 0.6862745,
                blue: 0.48235294,
                alpha: 1.0)]
    static let Alive = [
        UIColor(red: 0.79607844,
                green: 0.20784314,
                blue: 0.41960785,
                alpha: 1.0),
        UIColor(red: 0.7411765,
                green: 0.24705882,
                blue: 0.19607843,
                alpha: 1.0)]
    static let Scooter = [
        UIColor(red: 0.21176471,
                green: 0.81960785,
                blue: 0.8627451,
                alpha: 1.0),
        UIColor(red: 0.35686275,
                green: 0.5254902,
                blue: 0.8980392,
                alpha: 1.0)]
    static let Terminal = [
        UIColor(red: 0.0,
                green: 0.0,
                blue: 0.0,
                alpha: 1.0),
        UIColor(red: 0.05882353,
                green: 0.60784316,
                blue: 0.05882353,
                alpha: 1.0)]
    static let Telegram = [
        UIColor(red: 0.10980392,
                green: 0.57254905,
                blue: 0.8235294,
                alpha: 1.0),
        UIColor(red: 0.9490196,
                green: 0.9882353,
                blue: 0.99607843,
                alpha: 1.0)]
    static let CrimsonTide = [
        UIColor(red: 0.39215687,
                green: 0.16862746,
                blue: 0.4509804,
                alpha: 1.0),
        UIColor(red: 0.7764706,
                green: 0.25882354,
                blue: 0.43137255,
                alpha: 1.0)]
    static let Socialive = [
        UIColor(red: 0.023529412,
                green: 0.74509805,
                blue: 0.7137255,
                alpha: 1.0),
        UIColor(red: 0.28235295,
                green: 0.69411767,
                blue: 0.7490196,
                alpha: 1.0)]
    static let Subu = [
        UIColor(red: 0.047058824,
                green: 0.92156863,
                blue: 0.92156863,
                alpha: 1.0),
        UIColor(red: 0.1254902,
                green: 0.8901961,
                blue: 0.69803923,
                alpha: 1.0),
        UIColor(red: 0.16078432,
                green: 1.0,
                blue: 0.7764706,
                alpha: 1.0)]
    static let BrokenHearts = [
        UIColor(red: 0.8509804,
                green: 0.654902,
                blue: 0.78039217,
                alpha: 1.0),
        UIColor(red: 1.0,
                green: 0.9882353,
                blue: 0.8627451,
                alpha: 1.0)]
    static let KimobyIsTheNewBlue = [
        UIColor(red: 0.22352941,
                green: 0.41568628,
                blue: 0.9882353,
                alpha: 1.0),
        UIColor(red: 0.16078432,
                green: 0.28235295,
                blue: 1.0,
                alpha: 1.0)]
    static let Dull = [
        UIColor(red: 0.7882353,
                green: 0.8392157,
                blue: 1.0,
                alpha: 1.0),
        UIColor(red: 0.8862745,
                green: 0.8862745,
                blue: 0.8862745,
                alpha: 1.0)]
    static let Purpink = [
        UIColor(red: 0.49803922,
                green: 0.0,
                blue: 1.0,
                alpha: 1.0),
        UIColor(red: 0.88235295,
                green: 0.0,
                blue: 1.0,
                alpha: 1.0)]
    static let OrangeCoral = [
        UIColor(red: 1.0,
                green: 0.6,
                blue: 0.4,
                alpha: 1.0),
        UIColor(red: 1.0,
                green: 0.36862746,
                blue: 0.38431373,
                alpha: 1.0)]
    static let Summer = [
        UIColor(red: 0.13333334,
                green: 0.75686276,
                blue: 0.7647059,
                alpha: 1.0),
        UIColor(red: 0.99215686,
                green: 0.73333335,
                blue: 0.1764706,
                alpha: 1.0)]
    static let KingYna = [
        UIColor(red: 0.101960786,
                green: 0.16470589,
                blue: 0.42352942,
                alpha: 1.0),
        UIColor(red: 0.69803923,
                green: 0.12156863,
                blue: 0.12156863,
                alpha: 1.0),
        UIColor(red: 0.99215686,
                green: 0.73333335,
                blue: 0.1764706,
                alpha: 1.0)]
    static let VelvetSun = [
        UIColor(red: 0.88235295,
                green: 0.93333334,
                blue: 0.7647059,
                alpha: 1.0),
        UIColor(red: 0.9411765,
                green: 0.3137255,
                blue: 0.3254902,
                alpha: 1.0)]
    static let Zinc = [
        UIColor(red: 0.6784314,
                green: 0.6627451,
                blue: 0.5882353,
                alpha: 1.0),
        UIColor(red: 0.9490196,
                green: 0.9490196,
                blue: 0.9490196,
                alpha: 1.0),
        UIColor(red: 0.85882354,
                green: 0.85882354,
                blue: 0.85882354,
                alpha: 1.0),
        UIColor(red: 0.91764706,
                green: 0.91764706,
                blue: 0.91764706,
                alpha: 1.0)]
    static let Hydrogen = [
        UIColor(red: 0.4,
                green: 0.49019608,
                blue: 0.7137255,
                alpha: 1.0),
        UIColor(red: 0.0,
                green: 0.50980395,
                blue: 0.78431374,
                alpha: 1.0),
        UIColor(red: 0.0,
                green: 0.50980395,
                blue: 0.78431374,
                alpha: 1.0),
        UIColor(red: 0.4,
                green: 0.49019608,
                blue: 0.7137255,
                alpha: 1.0)]
    static let Argon = [
        UIColor(red: 0.011764706,
                green: 0.0,
                blue: 0.11764706,
                alpha: 1.0),
        UIColor(red: 0.4509804,
                green: 0.011764706,
                blue: 0.7529412,
                alpha: 1.0),
        UIColor(red: 0.9254902,
                green: 0.21960784,
                blue: 0.7372549,
                alpha: 1.0),
        UIColor(red: 0.99215686,
                green: 0.9372549,
                blue: 0.9764706,
                alpha: 1.0)]
    static let Lithium = [
        UIColor(red: 0.42745098,
                green: 0.3764706,
                blue: 0.15294118,
                alpha: 1.0),
        UIColor(red: 0.827451,
                green: 0.79607844,
                blue: 0.72156864,
                alpha: 1.0)]
    static let DigitalWater = [
        UIColor(red: 0.45490196,
                green: 0.92156863,
                blue: 0.8352941,
                alpha: 1.0),
        UIColor(red: 0.6745098,
                green: 0.7137255,
                blue: 0.8980392,
                alpha: 1.0)]
    static let OrangeFun = [
        UIColor(red: 0.9882353,
                green: 0.2901961,
                blue: 0.101960786,
                alpha: 1.0),
        UIColor(red: 0.96862745,
                green: 0.7176471,
                blue: 0.2,
                alpha: 1.0)]
    static let RainbowBlue = [
        UIColor(red: 0.0,
                green: 0.9490196,
                blue: 0.3764706,
                alpha: 1.0),
        UIColor(red: 0.019607844,
                green: 0.45882353,
                blue: 0.9019608,
                alpha: 1.0)]
    static let PinkFlavour = [
        UIColor(red: 0.5019608,
                green: 0.0,
                blue: 0.5019608,
                alpha: 1.0),
        UIColor(red: 1.0,
                green: 0.7529412,
                blue: 0.79607844,
                alpha: 1.0)]
    static let Sulphur = [
        UIColor(red: 0.7921569,
                green: 0.77254903,
                blue: 0.19215687,
                alpha: 1.0),
        UIColor(red: 0.9529412,
                green: 0.9764706,
                blue: 0.654902,
                alpha: 1.0)]
    static let Selenium = [
        UIColor(red: 0.23529412,
                green: 0.23137255,
                blue: 0.24705882,
                alpha: 1.0),
        UIColor(red: 0.3764706,
                green: 0.36078432,
                blue: 0.23529412,
                alpha: 1.0)]
    static let Delicate = [
        UIColor(red: 0.827451,
                green: 0.8,
                blue: 0.8901961,
                alpha: 1.0),
        UIColor(red: 0.9137255,
                green: 0.89411765,
                blue: 0.9411765,
                alpha: 1.0)]
    static let Ohhappiness = [
        UIColor(red: 0.0,
                green: 0.6901961,
                blue: 0.60784316,
                alpha: 1.0),
        UIColor(red: 0.5882353,
                green: 0.7882353,
                blue: 0.23921569,
                alpha: 1.0)]
    static let Lawrencium = [
        UIColor(red: 0.05882353,
                green: 0.047058824,
                blue: 0.16078432,
                alpha: 1.0),
        UIColor(red: 0.1882353,
                green: 0.16862746,
                blue: 0.3882353,
                alpha: 1.0),
        UIColor(red: 0.14117648,
                green: 0.14117648,
                blue: 0.24313726,
                alpha: 1.0)]
    static let Relaxingred = [
        UIColor(red: 1.0,
                green: 0.9843137,
                blue: 0.8352941,
                alpha: 1.0),
        UIColor(red: 0.69803923,
                green: 0.039215688,
                blue: 0.17254902,
                alpha: 1.0)]
    static let TaranTado = [
        UIColor(red: 0.13725491,
                green: 0.02745098,
                blue: 0.3019608,
                alpha: 1.0),
        UIColor(red: 0.8,
                green: 0.3254902,
                blue: 0.2,
                alpha: 1.0)]
    static let Bighead = [
        UIColor(red: 0.7882353,
                green: 0.29411766,
                blue: 0.29411766,
                alpha: 1.0),
        UIColor(red: 0.29411766,
                green: 0.07450981,
                blue: 0.30980393,
                alpha: 1.0)]
    static let SublimeVivid = [
        UIColor(red: 0.9882353,
                green: 0.27450982,
                blue: 0.41960785,
                alpha: 1.0),
        UIColor(red: 0.24705882,
                green: 0.36862746,
                blue: 0.9843137,
                alpha: 1.0)]
    static let SublimeLight = [
        UIColor(red: 0.9882353,
                green: 0.36078432,
                blue: 0.49019608,
                alpha: 1.0),
        UIColor(red: 0.41568628,
                green: 0.50980395,
                blue: 0.9843137,
                alpha: 1.0)]
    static let PunYeta = [
        UIColor(red: 0.0627451,
                green: 0.5529412,
                blue: 0.78039217,
                alpha: 1.0),
        UIColor(red: 0.9372549,
                green: 0.5568628,
                blue: 0.21960784,
                alpha: 1.0)]
    static let Quepal = [
        UIColor(red: 0.06666667,
                green: 0.6,
                blue: 0.5568628,
                alpha: 1.0),
        UIColor(red: 0.21960784,
                green: 0.9372549,
                blue: 0.49019608,
                alpha: 1.0)]
    static let SandtoBlue = [
        UIColor(red: 0.24313726,
                green: 0.31764707,
                blue: 0.31764707,
                alpha: 1.0),
        UIColor(red: 0.87058824,
                green: 0.79607844,
                blue: 0.6431373,
                alpha: 1.0)]
    static let WeddingDayBlues = [
        UIColor(red: 0.2509804,
                green: 0.8784314,
                blue: 0.8156863,
                alpha: 1.0),
        UIColor(red: 1.0,
                green: 0.54901963,
                blue: 0.0,
                alpha: 1.0),
        UIColor(red: 1.0,
                green: 0.0,
                blue: 0.5019608,
                alpha: 1.0)]
    static let Shifter = [
        UIColor(red: 0.7372549,
                green: 0.30588236,
                blue: 0.6117647,
                alpha: 1.0),
        UIColor(red: 0.972549,
                green: 0.02745098,
                blue: 0.34901962,
                alpha: 1.0)]
    static let RedSunset = [
        UIColor(red: 0.20784314,
                green: 0.36078432,
                blue: 0.49019608,
                alpha: 1.0),
        UIColor(red: 0.42352942,
                green: 0.35686275,
                blue: 0.48235294,
                alpha: 1.0),
        UIColor(red: 0.7529412,
                green: 0.42352942,
                blue: 0.5176471,
                alpha: 1.0)]
    static let MoonPurple = [
        UIColor(red: 0.30588236,
                green: 0.32941177,
                blue: 0.78431374,
                alpha: 1.0),
        UIColor(red: 0.56078434,
                green: 0.5803922,
                blue: 0.9843137,
                alpha: 1.0)]
    static let PureLust = [
        UIColor(red: 0.2,
                green: 0.2,
                blue: 0.2,
                alpha: 1.0),
        UIColor(red: 0.8666667,
                green: 0.09411765,
                blue: 0.09411765,
                alpha: 1.0)]
    static let SlightOceanView = [
        UIColor(red: 0.65882355,
                green: 0.7529412,
                blue: 1.0,
                alpha: 1.0),
        UIColor(red: 0.24705882,
                green: 0.16862746,
                blue: 0.5882353,
                alpha: 1.0)]
    static let eXpresso = [
        UIColor(red: 0.6784314,
                green: 0.3254902,
                blue: 0.5372549,
                alpha: 1.0),
        UIColor(red: 0.23529412,
                green: 0.0627451,
                blue: 0.3254902,
                alpha: 1.0)]
    static let Shifty = [
        UIColor(red: 0.3882353,
                green: 0.3882353,
                blue: 0.3882353,
                alpha: 1.0),
        UIColor(red: 0.63529414,
                green: 0.67058825,
                blue: 0.34509805,
                alpha: 1.0)]
    static let Vanusa = [
        UIColor(red: 0.85490197,
                green: 0.26666668,
                blue: 0.3254902,
                alpha: 1.0),
        UIColor(red: 0.5372549,
                green: 0.12941177,
                blue: 0.41960785,
                alpha: 1.0)]
    static let EveningNight = [
        UIColor(red: 0.0,
                green: 0.3529412,
                blue: 0.654902,
                alpha: 1.0),
        UIColor(red: 1.0,
                green: 0.99215686,
                blue: 0.89411765,
                alpha: 1.0)]
    static let Magic = [
        UIColor(red: 0.34901962,
                green: 0.75686276,
                blue: 0.4509804,
                alpha: 1.0),
        UIColor(red: 0.6313726,
                green: 0.49803922,
                blue: 0.8784314,
                alpha: 1.0),
        UIColor(red: 0.3647059,
                green: 0.14901961,
                blue: 0.75686276,
                alpha: 1.0)]
    static let Margo = [
        UIColor(red: 1.0,
                green: 0.9372549,
                blue: 0.7294118,
                alpha: 1.0),
        UIColor(red: 1.0,
                green: 1.0,
                blue: 1.0,
                alpha: 1.0)]
    static let BlueRaspberry = [
        UIColor(red: 0.0,
                green: 0.7058824,
                blue: 0.85882354,
                alpha: 1.0),
        UIColor(red: 0.0,
                green: 0.5137255,
                blue: 0.6901961,
                alpha: 1.0)]
    static let CitrusPeel = [
        UIColor(red: 0.99215686,
                green: 0.78431374,
                blue: 0.1882353,
                alpha: 1.0),
        UIColor(red: 0.9529412,
                green: 0.4509804,
                blue: 0.20784314,
                alpha: 1.0)]
    static let SinCityRed = [
        UIColor(red: 0.92941177,
                green: 0.12941177,
                blue: 0.22745098,
                alpha: 1.0),
        UIColor(red: 0.5764706,
                green: 0.16078432,
                blue: 0.11764706,
                alpha: 1.0)]
    static let Rastafari = [
        UIColor(red: 0.11764706,
                green: 0.5882353,
                blue: 0.0,
                alpha: 1.0),
        UIColor(red: 1.0,
                green: 0.9490196,
                blue: 0.0,
                alpha: 1.0),
        UIColor(red: 1.0,
                green: 0.0,
                blue: 0.0,
                alpha: 1.0)]
    static let SummerDog = [
        UIColor(red: 0.65882355,
                green: 1.0,
                blue: 0.47058824,
                alpha: 1.0),
        UIColor(red: 0.47058824,
                green: 1.0,
                blue: 0.8392157,
                alpha: 1.0)]
    static let Wiretap = [
        UIColor(red: 0.5411765,
                green: 0.13725491,
                blue: 0.5294118,
                alpha: 1.0),
        UIColor(red: 0.9137255,
                green: 0.2509804,
                blue: 0.34117648,
                alpha: 1.0),
        UIColor(red: 0.9490196,
                green: 0.44313726,
                blue: 0.12941177,
                alpha: 1.0)]
    static let BurningOrange = [
        UIColor(red: 1.0,
                green: 0.25490198,
                blue: 0.42352942,
                alpha: 1.0),
        UIColor(red: 1.0,
                green: 0.29411766,
                blue: 0.16862746,
                alpha: 1.0)]
    static let UltraVoilet = [
        UIColor(red: 0.39607844,
                green: 0.30588236,
                blue: 0.6392157,
                alpha: 1.0),
        UIColor(red: 0.91764706,
                green: 0.6862745,
                blue: 0.78431374,
                alpha: 1.0)]
    static let ByDesign = [
        UIColor(red: 0.0,
                green: 0.62352943,
                blue: 1.0,
                alpha: 1.0),
        UIColor(red: 0.9254902,
                green: 0.18431373,
                blue: 0.29411766,
                alpha: 1.0)]
    static let KyooTah = [
        UIColor(red: 0.32941177,
                green: 0.2901961,
                blue: 0.49019608,
                alpha: 1.0),
        UIColor(red: 1.0,
                green: 0.83137256,
                blue: 0.32156864,
                alpha: 1.0)]
    static let KyeMeh = [
        UIColor(red: 0.5137255,
                green: 0.3764706,
                blue: 0.7647059,
                alpha: 1.0),
        UIColor(red: 0.18039216,
                green: 0.7490196,
                blue: 0.5686275,
                alpha: 1.0)]
    static let KyooPal = [
        UIColor(red: 0.8666667,
                green: 0.24313726,
                blue: 0.32941177,
                alpha: 1.0),
        UIColor(red: 0.41960785,
                green: 0.8980392,
                blue: 0.52156866,
                alpha: 1.0)]
    static let Metapolis = [
        UIColor(red: 0.39607844,
                green: 0.6,
                blue: 0.6,
                alpha: 1.0),
        UIColor(red: 0.95686275,
                green: 0.4745098,
                blue: 0.12156863,
                alpha: 1.0)]
    static let Flare = [
        UIColor(red: 0.94509804,
                green: 0.15294118,
                blue: 0.06666667,
                alpha: 1.0),
        UIColor(red: 0.9607843,
                green: 0.6862745,
                blue: 0.09803922,
                alpha: 1.0)]
    static let WitchingHour = [
        UIColor(red: 0.7647059,
                green: 0.078431375,
                blue: 0.19607843,
                alpha: 1.0),
        UIColor(red: 0.14117648,
                green: 0.043137256,
                blue: 0.21176471,
                alpha: 1.0)]
    static let AzurLane = [
        UIColor(red: 0.49803922,
                green: 0.49803922,
                blue: 0.8352941,
                alpha: 1.0),
        UIColor(red: 0.5254902,
                green: 0.65882355,
                blue: 0.90588236,
                alpha: 1.0),
        UIColor(red: 0.5686275,
                green: 0.91764706,
                blue: 0.89411765,
                alpha: 1.0)]
    static let Neuromancer = [
        UIColor(red: 0.9764706,
                green: 0.3254902,
                blue: 0.7764706,
                alpha: 1.0),
        UIColor(red: 0.7254902,
                green: 0.11372549,
                blue: 0.4509804,
                alpha: 1.0)]
    static let Harvey = [
        UIColor(red: 0.12156863,
                green: 0.2509804,
                blue: 0.21568628,
                alpha: 1.0),
        UIColor(red: 0.6,
                green: 0.9490196,
                blue: 0.78431374,
                alpha: 1.0)]
    static let Amin = [
        UIColor(red: 0.5568628,
                green: 0.1764706,
                blue: 0.8862745,
                alpha: 1.0),
        UIColor(red: 0.2901961,
                green: 0.0,
                blue: 0.8784314,
                alpha: 1.0)]
    static let Memariani = [
        UIColor(red: 0.6666667,
                green: 0.29411766,
                blue: 0.41960785,
                alpha: 1.0),
        UIColor(red: 0.41960785,
                green: 0.41960785,
                blue: 0.5137255,
                alpha: 1.0),
        UIColor(red: 0.23137255,
                green: 0.5529412,
                blue: 0.6,
                alpha: 1.0)]
    static let Yoda = [
        UIColor(red: 1.0,
                green: 0.0,
                blue: 0.6,
                alpha: 1.0),
        UIColor(red: 0.28627452,
                green: 0.19607843,
                blue: 0.2509804,
                alpha: 1.0)]
    static let CoolSky = [
        UIColor(red: 0.16078432,
                green: 0.5019608,
                blue: 0.7254902,
                alpha: 1.0),
        UIColor(red: 0.42745098,
                green: 0.8352941,
                blue: 0.98039216,
                alpha: 1.0),
        UIColor(red: 1.0,
                green: 1.0,
                blue: 1.0,
                alpha: 1.0)]
    static let DarkOcean = [
        UIColor(red: 0.21568628,
                green: 0.23137255,
                blue: 0.26666668,
                alpha: 1.0),
        UIColor(red: 0.25882354,
                green: 0.5254902,
                blue: 0.95686275,
                alpha: 1.0)]
    static let EveningSunshine = [
        UIColor(red: 0.7254902,
                green: 0.16862746,
                blue: 0.15294118,
                alpha: 1.0),
        UIColor(red: 0.08235294,
                green: 0.39607844,
                blue: 0.7529412,
                alpha: 1.0)]
    static let JShine = [
        UIColor(red: 0.07058824,
                green: 0.7607843,
                blue: 0.9137255,
                alpha: 1.0),
        UIColor(red: 0.76862746,
                green: 0.44313726,
                blue: 0.92941177,
                alpha: 1.0),
        UIColor(red: 0.9647059,
                green: 0.30980393,
                blue: 0.34901962,
                alpha: 1.0)]
    static let MoonlitAsteroid = [
        UIColor(red: 0.05882353,
                green: 0.1254902,
                blue: 0.15294118,
                alpha: 1.0),
        UIColor(red: 0.1254902,
                green: 0.22745098,
                blue: 0.2627451,
                alpha: 1.0),
        UIColor(red: 0.17254902,
                green: 0.3254902,
                blue: 0.39215687,
                alpha: 1.0)]
    static let MegaTron = [
        UIColor(red: 0.7764706,
                green: 1.0,
                blue: 0.8666667,
                alpha: 1.0),
        UIColor(red: 0.9843137,
                green: 0.84313726,
                blue: 0.5254902,
                alpha: 1.0),
        UIColor(red: 0.96862745,
                green: 0.4745098,
                blue: 0.49019608,
                alpha: 1.0)]
    static let CoolBlues = [
        UIColor(red: 0.12941177,
                green: 0.5764706,
                blue: 0.6901961,
                alpha: 1.0),
        UIColor(red: 0.42745098,
                green: 0.8352941,
                blue: 0.92941177,
                alpha: 1.0)]
    static let PiggyPink = [
        UIColor(red: 0.93333334,
                green: 0.6117647,
                blue: 0.654902,
                alpha: 1.0),
        UIColor(red: 1.0,
                green: 0.8666667,
                blue: 0.88235295,
                alpha: 1.0)]
    static let GradeGrey = [
        UIColor(red: 0.7411765,
                green: 0.7647059,
                blue: 0.78039217,
                alpha: 1.0),
        UIColor(red: 0.17254902,
                green: 0.24313726,
                blue: 0.3137255,
                alpha: 1.0)]
    static let Zenta = [
        UIColor(red: 0.16470589,
                green: 0.1764706,
                blue: 0.24313726,
                alpha: 1.0),
        UIColor(red: 0.99607843,
                green: 0.79607844,
                blue: 0.43137255,
                alpha: 1.0)]
    static let ElectricPeacock = [
        UIColor(red: 0.5411765,
                green: 0.16862746,
                blue: 0.8862745,
                alpha: 1.0),
        UIColor(red: 0.0,
                green: 0.0,
                blue: 0.8039216,
                alpha: 1.0),
        UIColor(red: 0.13333334,
                green: 0.54509807,
                blue: 0.13333334,
                alpha: 1.0),
        UIColor(red: 0.8,
                green: 1.0,
                blue: 0.0,
                alpha: 1.0)]
    static let UnderBlueGreen = [
        UIColor(red: 0.019607844,
                green: 0.09803922,
                blue: 0.21568628,
                alpha: 1.0),
        UIColor(red: 0.0,
                green: 0.3019608,
                blue: 0.47843137,
                alpha: 1.0),
        UIColor(red: 0.0,
                green: 0.5294118,
                blue: 0.5764706,
                alpha: 1.0),
        UIColor(red: 0.0,
                green: 0.7490196,
                blue: 0.44705883,
                alpha: 1.0),
        UIColor(red: 0.65882355,
                green: 0.92156863,
                blue: 0.07058824,
                alpha: 1.0)]
    static let Lensod = [
        UIColor(red: 0.3764706,
                green: 0.14509805,
                blue: 0.9607843,
                alpha: 1.0),
        UIColor(red: 1.0,
                green: 0.33333334,
                blue: 0.33333334,
                alpha: 1.0)]
    static let Newspaper = [
        UIColor(red: 0.5411765,
                green: 0.16862746,
                blue: 0.8862745,
                alpha: 1.0),
        UIColor(red: 1.0,
                green: 0.64705884,
                blue: 0.0,
                alpha: 1.0),
        UIColor(red: 0.972549,
                green: 0.972549,
                blue: 1.0,
                alpha: 1.0)]
    static let DarkBlueGradient = [
        UIColor(red: 0.15294118,
                green: 0.45490196,
                blue: 0.68235296,
                alpha: 1.0),
        UIColor(red: 0.0,
                green: 0.18039216,
                blue: 0.3647059,
                alpha: 1.0),
        UIColor(red: 0.0,
                green: 0.18039216,
                blue: 0.3647059,
                alpha: 1.0)]
    static let DarkBluTwo = [
        UIColor(red: 0.0,
                green: 0.27450982,
                blue: 0.5019608,
                alpha: 1.0),
        UIColor(red: 0.26666668,
                green: 0.5176471,
                blue: 0.7294118,
                alpha: 1.0)]
    static let LemonLime = [
        UIColor(red: 0.49411765,
                green: 0.7764706,
                blue: 0.7372549,
                alpha: 1.0),
        UIColor(red: 0.92156863,
                green: 0.90588236,
                blue: 0.09019608,
                alpha: 1.0)]
    static let Beleko = [
        UIColor(red: 1.0,
                green: 0.11764706,
                blue: 0.3372549,
                alpha: 1.0),
        UIColor(red: 0.9764706,
                green: 0.7882353,
                blue: 0.25882354,
                alpha: 1.0),
        UIColor(red: 0.11764706,
                green: 0.5647059,
                blue: 1.0,
                alpha: 1.0)]
    static let MangoPapaya = [
        UIColor(red: 0.87058824,
                green: 0.5411765,
                blue: 0.25490198,
                alpha: 1.0),
        UIColor(red: 0.16470589,
                green: 0.85490197,
                blue: 0.3254902,
                alpha: 1.0)]
    static let UnicornRainbow = [
        UIColor(red: 0.96862745,
                green: 0.9411765,
                blue: 0.6745098,
                alpha: 1.0),
        UIColor(red: 0.6745098,
                green: 0.96862745,
                blue: 0.9411765,
                alpha: 1.0),
        UIColor(red: 0.9411765,
                green: 0.6745098,
                blue: 0.96862745,
                alpha: 1.0)]
    static let Flame = [
        UIColor(red: 1.0,
                green: 0.0,
                blue: 0.0,
                alpha: 1.0),
        UIColor(red: 0.99215686,
                green: 0.8117647,
                blue: 0.34509805,
                alpha: 1.0)]
    static let BlueRed = [
        UIColor(red: 0.21176471,
                green: 0.69411767,
                blue: 0.78039217,
                alpha: 1.0),
        UIColor(red: 0.5882353,
                green: 0.043137256,
                blue: 0.2,
                alpha: 1.0)]
    static let Twitter = [
        UIColor(red: 0.11372549,
                green: 0.6313726,
                blue: 0.9490196,
                alpha: 1.0),
        UIColor(red: 0.0,
                green: 0.62352943,
                blue: 0.9882353,
                alpha: 1.0)]
    static let Blooze = [
        UIColor(red: 0.42745098,
                green: 0.6509804,
                blue: 0.74509805,
                alpha: 1.0),
        UIColor(red: 0.29411766,
                green: 0.52156866,
                blue: 0.61960787,
                alpha: 1.0),
        UIColor(red: 0.42745098,
                green: 0.6509804,
                blue: 0.74509805,
                alpha: 1.0)]
    static let BlueSlate = [
        UIColor(red: 0.70980394,
                green: 0.7254902,
                blue: 1.0,
                alpha: 1.0),
        UIColor(red: 0.16862746,
                green: 0.17254902,
                blue: 0.28627452,
                alpha: 1.0)]
    static let SpaceLightGreen = [
        UIColor(red: 0.62352943,
                green: 0.627451,
                blue: 0.65882355,
                alpha: 1.0),
        UIColor(red: 0.36078432,
                green: 0.47058824,
                blue: 0.32156864,
                alpha: 1.0)]
    static let Flower = [
        UIColor(red: 0.8627451,
                green: 1.0,
                blue: 0.7411765,
                alpha: 1.0),
        UIColor(red: 0.8,
                green: 0.5254902,
                blue: 0.81960785,
                alpha: 1.0)]
    static let ElateTheEuge = [
        UIColor(red: 0.54509807,
                green: 0.87058824,
                blue: 0.85490197,
                alpha: 1.0),
        UIColor(red: 0.2627451,
                green: 0.6784314,
                blue: 0.8156863,
                alpha: 1.0),
        UIColor(red: 0.6,
                green: 0.5568628,
                blue: 0.8784314,
                alpha: 1.0),
        UIColor(red: 0.88235295,
                green: 0.49019608,
                blue: 0.7607843,
                alpha: 1.0),
        UIColor(red: 0.9372549,
                green: 0.5764706,
                blue: 0.5764706,
                alpha: 1.0)]
    static let PeachSea = [
        UIColor(red: 0.9019608,
                green: 0.68235296,
                blue: 0.54901963,
                alpha: 1.0),
        UIColor(red: 0.65882355,
                green: 0.80784315,
                blue: 0.8117647,
                alpha: 1.0)]
    static let Abbas = [
        UIColor(red: 0.0,
                green: 1.0,
                blue: 0.9411765,
                alpha: 1.0),
        UIColor(red: 0.0,
                green: 0.5137255,
                blue: 0.99607843,
                alpha: 1.0)]
    static let WinterWoods = [
        UIColor(red: 0.2,
                green: 0.2,
                blue: 0.2,
                alpha: 1.0),
        UIColor(red: 0.63529414,
                green: 0.67058825,
                blue: 0.34509805,
                alpha: 1.0),
        UIColor(red: 0.6431373,
                green: 0.22352941,
                blue: 0.19215687,
                alpha: 1.0)]
    static let Ameena = [
        UIColor(red: 0.047058824,
                green: 0.047058824,
                blue: 0.42745098,
                alpha: 1.0),
        UIColor(red: 0.87058824,
                green: 0.31764707,
                blue: 0.16862746,
                alpha: 1.0),
        UIColor(red: 0.59607846,
                green: 0.8156863,
                blue: 0.75686276,
                alpha: 1.0),
        UIColor(red: 0.35686275,
                green: 0.69803923,
                blue: 0.14901961,
                alpha: 1.0),
        UIColor(red: 0.007843138,
                green: 0.23529412,
                blue: 0.050980393,
                alpha: 1.0)]
    static let EmeraldSea = [
        UIColor(red: 0.019607844,
                green: 0.21960784,
                blue: 0.41960785,
                alpha: 1.0),
        UIColor(red: 0.36078432,
                green: 0.85882354,
                blue: 0.58431375,
                alpha: 1.0)]
    static let Bleem = [
        UIColor(red: 0.25882354,
                green: 0.5176471,
                blue: 0.85882354,
                alpha: 1.0),
        UIColor(red: 0.16078432,
                green: 0.91764706,
                blue: 0.76862746,
                alpha: 1.0)]
    static let CoffeeGold = [
        UIColor(red: 0.33333334,
                green: 0.2509804,
                blue: 0.13725491,
                alpha: 1.0),
        UIColor(red: 0.7882353,
                green: 0.59607846,
                blue: 0.27450982,
                alpha: 1.0)]
    static let Compass = [
        UIColor(red: 0.31764707,
                green: 0.41960785,
                blue: 0.54509807,
                alpha: 1.0),
        UIColor(red: 0.019607844,
                green: 0.41960785,
                blue: 0.23137255,
                alpha: 1.0)]
    static let Andreuzzas = [
        UIColor(red: 0.84313726,
                green: 0.023529412,
                blue: 0.32156864,
                alpha: 1.0),
        UIColor(red: 1.0,
                green: 0.007843138,
                blue: 0.36862746,
                alpha: 1.0)]
    static let Moonwalker = [
        UIColor(red: 0.08235294,
                green: 0.13725491,
                blue: 0.19215687,
                alpha: 1.0),
        UIColor(red: 0.0,
                green: 0.0,
                blue: 0.0,
                alpha: 1.0)]
    static let Whinehouse = [
        UIColor(red: 0.96862745,
                green: 0.96862745,
                blue: 0.96862745,
                alpha: 1.0),
        UIColor(red: 0.7254902,
                green: 0.627451,
                blue: 0.627451,
                alpha: 1.0),
        UIColor(red: 0.4745098,
                green: 0.2784314,
                blue: 0.2784314,
                alpha: 1.0),
        UIColor(red: 0.30588236,
                green: 0.1254902,
                blue: 0.1254902,
                alpha: 1.0),
        UIColor(red: 0.06666667,
                green: 0.06666667,
                blue: 0.06666667,
                alpha: 1.0)]
    static let HyperBlue = [
        UIColor(red: 0.34901962,
                green: 0.8039216,
                blue: 0.9137255,
                alpha: 1.0),
        UIColor(red: 0.039215688,
                green: 0.16470589,
                blue: 0.53333336,
                alpha: 1.0)]
    static let Racker = [
        UIColor(red: 0.92156863,
                green: 0.0,
                blue: 0.0,
                alpha: 1.0),
        UIColor(red: 0.58431375,
                green: 0.0,
                blue: 0.5411765,
                alpha: 1.0),
        UIColor(red: 0.2,
                green: 0.0,
                blue: 0.9882353,
                alpha: 1.0)]
    static let AftertheRain = [
        UIColor(red: 1.0,
                green: 0.45882353,
                blue: 0.7647059,
                alpha: 1.0),
        UIColor(red: 1.0,
                green: 0.6509804,
                blue: 0.2784314,
                alpha: 1.0),
        UIColor(red: 1.0,
                green: 0.9098039,
                blue: 0.24705882,
                alpha: 1.0),
        UIColor(red: 0.62352943,
                green: 1.0,
                blue: 0.35686275,
                alpha: 1.0),
        UIColor(red: 0.4392157,
                green: 0.8862745,
                blue: 1.0,
                alpha: 1.0),
        UIColor(red: 0.8039216,
                green: 0.5764706,
                blue: 1.0,
                alpha: 1.0)]
    static let NeonGreen = [
        UIColor(red: 0.5058824,
                green: 1.0,
                blue: 0.5411765,
                alpha: 1.0),
        UIColor(red: 0.39215687,
                green: 0.5882353,
                blue: 0.36862746,
                alpha: 1.0)]
    static let DustyGrass = [
        UIColor(red: 0.83137256,
                green: 0.9882353,
                blue: 0.4745098,
                alpha: 1.0),
        UIColor(red: 0.5882353,
                green: 0.9019608,
                blue: 0.6313726,
                alpha: 1.0)]
    static let VisualBlue = [
        UIColor(red: 0.0,
                green: 0.23921569,
                blue: 0.3019608,
                alpha: 1.0),
        UIColor(red: 0.0,
                green: 0.7882353,
                blue: 0.5882353,
                alpha: 1.0)]
}
