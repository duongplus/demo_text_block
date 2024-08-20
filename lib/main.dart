import 'package:flutter/material.dart';
import 'dart:convert';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Text Block Renderer')),
        body: FutureBuilder<TextBlock>(
          future: loadTextBlock(), // Hàm này sẽ parse JSON và trả về TextBlock
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Center(child: Text('Error: ${snapshot.error}'));
            } else {
              return TextBlockWidget(snapshot.data!);
            }
          },
        ),
      ),
    );
  }

  Future<TextBlock> loadTextBlock() async {
    const jsonString = '''{
      "blockType": "TEXT",
      "boundingBox": {
        "vertices": [
          {"x": 355, "y": 79},
          {"x": 440, "y": 78},
          {"x": 441, "y": 141},
          {"x": 356, "y": 142}
        ]
      },
      "confidence": 0.98858106,
      "paragraphs": [
        {
          "boundingBox": {
            "vertices": [
              {"x": 355, "y": 79},
              {"x": 440, "y": 78},
              {"x": 441, "y": 141},
              {"x": 356, "y": 142}
            ]
          },
          "confidence": 0.98858106,
          "words": [
            {
              "boundingBox": {
                "vertices": [
                  {"x": 355, "y": 79},
                  {"x": 440, "y": 78},
                  {"x": 441, "y": 141},
                  {"x": 356, "y": 142}
                ]
              },
              "confidence": 0.98858106,
              "symbols": [
                {
                  "boundingBox": {
                    "vertices": [
                      {"x": 355, "y": 80},
                      {"x": 399, "y": 79},
                      {"x": 400, "y": 141},
                      {"x": 356, "y": 142}
                    ]
                  },
                  "confidence": 0.98746586,
                  "text": "6"
                },
                {
                  "boundingBox": {
                    "vertices": [
                      {"x": 394, "y": 79},
                      {"x": 440, "y": 78},
                      {"x": 441, "y": 140},
                      {"x": 395, "y": 141}
                    ]
                  },
                  "confidence": 0.98969626,
                  "property": {
                    "detectedBreak": {"type": "LINE_BREAK"}
                  },
                  "text": "7"
                }
                
              ]
            },
            {
                    "boundingBox": {
                      "vertices": [
                        {
                          "x": 123,
                          "y": 352
                        },
                        {
                          "x": 242,
                          "y": 351
                        },
                        {
                          "x": 242,
                          "y": 397
                        },
                        {
                          "x": 123,
                          "y": 398
                        }
                      ]
                    },
                    "confidence": 0.98739904,
                    "property": {
                      "detectedLanguages": [
                        {
                          "confidence": 1,
                          "languageCode": "en"
                        }
                      ]
                    },
                    "symbols": [
                      {
                        "boundingBox": {
                          "vertices": [
                            {
                              "x": 123,
                              "y": 353
                            },
                            {
                              "x": 149,
                              "y": 353
                            },
                            {
                              "x": 149,
                              "y": 398
                            },
                            {
                              "x": 123,
                              "y": 398
                            }
                          ]
                        },
                        "confidence": 0.9768149,
                        "text": "E"
                      },
                      {
                        "boundingBox": {
                          "vertices": [
                            {
                              "x": 148,
                              "y": 352
                            },
                            {
                              "x": 172,
                              "y": 352
                            },
                            {
                              "x": 172,
                              "y": 397
                            },
                            {
                              "x": 148,
                              "y": 397
                            }
                          ]
                        },
                        "confidence": 0.9847786,
                        "text": "v"
                      },
                      {
                        "boundingBox": {
                          "vertices": [
                            {
                              "x": 174,
                              "y": 352
                            },
                            {
                              "x": 195,
                              "y": 352
                            },
                            {
                              "x": 195,
                              "y": 397
                            },
                            {
                              "x": 174,
                              "y": 397
                            }
                          ]
                        },
                        "confidence": 0.99452513,
                        "text": "e"
                      },
                      {
                        "boundingBox": {
                          "vertices": [
                            {
                              "x": 195,
                              "y": 352
                            },
                            {
                              "x": 216,
                              "y": 352
                            },
                            {
                              "x": 216,
                              "y": 397
                            },
                            {
                              "x": 195,
                              "y": 397
                            }
                          ]
                        },
                        "confidence": 0.9926886,
                        "text": "r"
                      },
                      {
                        "boundingBox": {
                          "vertices": [
                            {
                              "x": 216,
                              "y": 352
                            },
                            {
                              "x": 242,
                              "y": 352
                            },
                            {
                              "x": 242,
                              "y": 397
                            },
                            {
                              "x": 216,
                              "y": 397
                            }
                          ]
                        },
                        "confidence": 0.9881881,
                        "property": {
                          "detectedBreak": {
                            "type": "SPACE"
                          }
                        },
                        "text": "y"
                      }
                    ]
                  },
                  
                  {
                    "boundingBox": {
                      "vertices": [
                        {
                          "x": 254,
                          "y": 352
                        },
                        {
                          "x": 357,
                          "y": 352
                        },
                        {
                          "x": 357,
                          "y": 397
                        },
                        {
                          "x": 254,
                          "y": 397
                        }
                      ]
                    },
                    "confidence": 0.9876783,
                    "property": {
                      "detectedLanguages": [
                        {
                          "confidence": 1,
                          "languageCode": "en"
                        }
                      ]
                    },
                    "symbols": [
                      {
                        "boundingBox": {
                          "vertices": [
                            {
                              "x": 254,
                              "y": 352
                            },
                            {
                              "x": 273,
                              "y": 352
                            },
                            {
                              "x": 273,
                              "y": 397
                            },
                            {
                              "x": 254,
                              "y": 397
                            }
                          ]
                        },
                        "confidence": 0.98809606,
                        "text": "s"
                      },
                      {
                        "boundingBox": {
                          "vertices": [
                            {
                              "x": 275,
                              "y": 352
                            },
                            {
                              "x": 297,
                              "y": 352
                            },
                            {
                              "x": 297,
                              "y": 397
                            },
                            {
                              "x": 275,
                              "y": 397
                            }
                          ]
                        },
                        "confidence": 0.98409766,
                        "text": "a"
                      },
                      {
                        "boundingBox": {
                          "vertices": [
                            {
                              "x": 298,
                              "y": 352
                            },
                            {
                              "x": 311,
                              "y": 352
                            },
                            {
                              "x": 311,
                              "y": 397
                            },
                            {
                              "x": 298,
                              "y": 397
                            }
                          ]
                        },
                        "confidence": 0.98682314,
                        "text": "i"
                      },
                      {
                        "boundingBox": {
                          "vertices": [
                            {
                              "x": 310,
                              "y": 352
                            },
                            {
                              "x": 335,
                              "y": 352
                            },
                            {
                              "x": 335,
                              "y": 397
                            },
                            {
                              "x": 310,
                              "y": 397
                            }
                          ]
                        },
                        "confidence": 0.9897388,
                        "text": "n"
                      },
                      {
                        "boundingBox": {
                          "vertices": [
                            {
                              "x": 338,
                              "y": 352
                            },
                            {
                              "x": 357,
                              "y": 352
                            },
                            {
                              "x": 357,
                              "y": 397
                            },
                            {
                              "x": 338,
                              "y": 397
                            }
                          ]
                        },
                        "confidence": 0.98963577,
                        "property": {
                          "detectedBreak": {
                            "type": "SPACE"
                          }
                        },
                        "text": "t"
                      }
                    ]
                  },
                  {
                    "boundingBox": {
                      "vertices": [
                        {
                          "x": 366,
                          "y": 351
                        },
                        {
                          "x": 437,
                          "y": 351
                        },
                        {
                          "x": 437,
                          "y": 396
                        },
                        {
                          "x": 366,
                          "y": 396
                        }
                      ]
                    },
                    "confidence": 0.98995006,
                    "property": {
                      "detectedLanguages": [
                        {
                          "confidence": 1,
                          "languageCode": "en"
                        }
                      ]
                    },
                    "symbols": [
                      {
                        "boundingBox": {
                          "vertices": [
                            {
                              "x": 366,
                              "y": 351
                            },
                            {
                              "x": 393,
                              "y": 351
                            },
                            {
                              "x": 393,
                              "y": 396
                            },
                            {
                              "x": 366,
                              "y": 396
                            }
                          ]
                        },
                        "confidence": 0.9934091,
                        "text": "h"
                      },
                      {
                        "boundingBox": {
                          "vertices": [
                            {
                              "x": 395,
                              "y": 351
                            },
                            {
                              "x": 418,
                              "y": 351
                            },
                            {
                              "x": 418,
                              "y": 396
                            },
                            {
                              "x": 395,
                              "y": 396
                            }
                          ]
                        },
                        "confidence": 0.9885348,
                        "text": "a"
                      },
                      {
                        "boundingBox": {
                          "vertices": [
                            {
                              "x": 420,
                              "y": 351
                            },
                            {
                              "x": 437,
                              "y": 351
                            },
                            {
                              "x": 437,
                              "y": 396
                            },
                            {
                              "x": 420,
                              "y": 396
                            }
                          ]
                        },
                        "confidence": 0.9879063,
                        "property": {
                          "detectedBreak": {
                            "type": "SPACE"
                          }
                        },
                        "text": "s"
                      }
                    ]
                  },
                  {
                    "boundingBox": {
                      "vertices": [
                        {
                          "x": 452,
                          "y": 351
                        },
                        {
                          "x": 475,
                          "y": 351
                        },
                        {
                          "x": 475,
                          "y": 396
                        },
                        {
                          "x": 452,
                          "y": 396
                        }
                      ]
                    },
                    "confidence": 0.9933438,
                    "property": {
                      "detectedLanguages": [
                        {
                          "confidence": 1,
                          "languageCode": "en"
                        }
                      ]
                    },
                    "symbols": [
                      {
                        "boundingBox": {
                          "vertices": [
                            {
                              "x": 452,
                              "y": 351
                            },
                            {
                              "x": 475,
                              "y": 351
                            },
                            {
                              "x": 475,
                              "y": 396
                            },
                            {
                              "x": 452,
                              "y": 396
                            }
                          ]
                        },
                        "confidence": 0.9933438,
                        "property": {
                          "detectedBreak": {
                            "type": "SPACE"
                          }
                        },
                        "text": "a"
                      }
                    ]
                  },
                  {
                    "boundingBox": {
                      "vertices": [
                        {
                          "x": 486,
                          "y": 350
                        },
                        {
                          "x": 574,
                          "y": 350
                        },
                        {
                          "x": 574,
                          "y": 396
                        },
                        {
                          "x": 486,
                          "y": 396
                        }
                      ]
                    },
                    "confidence": 0.9915447,
                    "property": {
                      "detectedLanguages": [
                        {
                          "confidence": 1,
                          "languageCode": "en"
                        }
                      ]
                    },
                    "symbols": [
                      {
                        "boundingBox": {
                          "vertices": [
                            {
                              "x": 486,
                              "y": 351
                            },
                            {
                              "x": 511,
                              "y": 351
                            },
                            {
                              "x": 511,
                              "y": 396
                            },
                            {
                              "x": 486,
                              "y": 396
                            }
                          ]
                        },
                        "confidence": 0.99308544,
                        "text": "p"
                      },
                      {
                        "boundingBox": {
                          "vertices": [
                            {
                              "x": 514,
                              "y": 351
                            },
                            {
                              "x": 536,
                              "y": 351
                            },
                            {
                              "x": 536,
                              "y": 396
                            },
                            {
                              "x": 514,
                              "y": 396
                            }
                          ]
                        },
                        "confidence": 0.9932438,
                        "text": "a"
                      },
                      {
                        "boundingBox": {
                          "vertices": [
                            {
                              "x": 538,
                              "y": 351
                            },
                            {
                              "x": 555,
                              "y": 351
                            },
                            {
                              "x": 555,
                              "y": 396
                            },
                            {
                              "x": 538,
                              "y": 396
                            }
                          ]
                        },
                        "confidence": 0.9903683,
                        "text": "s"
                      },
                      {
                        "boundingBox": {
                          "vertices": [
                            {
                              "x": 557,
                              "y": 350
                            },
                            {
                              "x": 574,
                              "y": 350
                            },
                            {
                              "x": 574,
                              "y": 395
                            },
                            {
                              "x": 557,
                              "y": 395
                            }
                          ]
                        },
                        "confidence": 0.98948145,
                        "text": "t"
                      }
                    ]
                  },
                  {
                    "boundingBox": {
                      "vertices": [
                        {
                          "x": 576,
                          "y": 350
                        },
                        {
                          "x": 585,
                          "y": 350
                        },
                        {
                          "x": 585,
                          "y": 395
                        },
                        {
                          "x": 576,
                          "y": 395
                        }
                      ]
                    },
                    "confidence": 0.98200804,
                    "property": {
                      "detectedLanguages": [
                        {
                          "confidence": 1,
                          "languageCode": "en"
                        }
                      ]
                    },
                    "symbols": [
                      {
                        "boundingBox": {
                          "vertices": [
                            {
                              "x": 576,
                              "y": 350
                            },
                            {
                              "x": 585,
                              "y": 350
                            },
                            {
                              "x": 585,
                              "y": 395
                            },
                            {
                              "x": 576,
                              "y": 395
                            }
                          ]
                        },
                        "confidence": 0.98200804,
                        "property": {
                          "detectedBreak": {
                            "type": "SPACE"
                          }
                        },
                        "text": ","
                      }
                    ]
                  },
                  {
                    "boundingBox": {
                      "vertices": [
                        {
                          "x": 599,
                          "y": 350
                        },
                        {
                          "x": 676,
                          "y": 350
                        },
                        {
                          "x": 676,
                          "y": 395
                        },
                        {
                          "x": 599,
                          "y": 395
                        }
                      ]
                    },
                    "confidence": 0.99100786,
                    "property": {
                      "detectedLanguages": [
                        {
                          "confidence": 1,
                          "languageCode": "en"
                        }
                      ]
                    },
                    "symbols": [
                      {
                        "boundingBox": {
                          "vertices": [
                            {
                              "x": 599,
                              "y": 350
                            },
                            {
                              "x": 622,
                              "y": 350
                            },
                            {
                              "x": 622,
                              "y": 395
                            },
                            {
                              "x": 599,
                              "y": 395
                            }
                          ]
                        },
                        "confidence": 0.9904246,
                        "text": "a"
                      },
                      {
                        "boundingBox": {
                          "vertices": [
                            {
                              "x": 621,
                              "y": 350
                            },
                            {
                              "x": 649,
                              "y": 350
                            },
                            {
                              "x": 649,
                              "y": 395
                            },
                            {
                              "x": 621,
                              "y": 395
                            }
                          ]
                        },
                        "confidence": 0.9928486,
                        "text": "n"
                      },
                      {
                        "boundingBox": {
                          "vertices": [
                            {
                              "x": 651,
                              "y": 350
                            },
                            {
                              "x": 676,
                              "y": 350
                            },
                            {
                              "x": 676,
                              "y": 395
                            },
                            {
                              "x": 651,
                              "y": 395
                            }
                          ]
                        },
                        "confidence": 0.9897505,
                        "property": {
                          "detectedBreak": {
                            "type": "EOL_SURE_SPACE"
                          }
                        },
                        "text": "d"
                      }
                    ]
                  },
                  {
                    "boundingBox": {
                      "vertices": [
                        {
                          "x": 133,
                          "y": 418
                        },
                        {
                          "x": 246,
                          "y": 416
                        },
                        {
                          "x": 247,
                          "y": 460
                        },
                        {
                          "x": 134,
                          "y": 462
                        }
                      ]
                    },
                    "confidence": 0.9870834,
                    "property": {
                      "detectedLanguages": [
                        {
                          "confidence": 1,
                          "languageCode": "en"
                        }
                      ]
                    },
                    "symbols": [
                      {
                        "boundingBox": {
                          "vertices": [
                            {
                              "x": 133,
                              "y": 419
                            },
                            {
                              "x": 155,
                              "y": 419
                            },
                            {
                              "x": 156,
                              "y": 462
                            },
                            {
                              "x": 134,
                              "y": 462
                            }
                          ]
                        },
                        "confidence": 0.98469883,
                        "text": "e"
                      },
                      {
                        "boundingBox": {
                          "vertices": [
                            {
                              "x": 155,
                              "y": 418
                            },
                            {
                              "x": 178,
                              "y": 418
                            },
                            {
                              "x": 179,
                              "y": 461
                            },
                            {
                              "x": 156,
                              "y": 461
                            }
                          ]
                        },
                        "confidence": 0.986939,
                        "text": "v"
                      },
                      {
                        "boundingBox": {
                          "vertices": [
                            {
                              "x": 179,
                              "y": 418
                            },
                            {
                              "x": 201,
                              "y": 418
                            },
                            {
                              "x": 202,
                              "y": 461
                            },
                            {
                              "x": 180,
                              "y": 461
                            }
                          ]
                        },
                        "confidence": 0.99222666,
                        "text": "e"
                      },
                      {
                        "boundingBox": {
                          "vertices": [
                            {
                              "x": 200,
                              "y": 417
                            },
                            {
                              "x": 220,
                              "y": 417
                            },
                            {
                              "x": 221,
                              "y": 460
                            },
                            {
                              "x": 201,
                              "y": 460
                            }
                          ]
                        },
                        "confidence": 0.98615426,
                        "text": "r"
                      },
                      {
                        "boundingBox": {
                          "vertices": [
                            {
                              "x": 222,
                              "y": 417
                            },
                            {
                              "x": 246,
                              "y": 417
                            },
                            {
                              "x": 247,
                              "y": 460
                            },
                            {
                              "x": 223,
                              "y": 460
                            }
                          ]
                        },
                        "confidence": 0.9853981,
                        "property": {
                          "detectedBreak": {
                            "type": "SPACE"
                          }
                        },
                        "text": "y"
                      }
                    ]
                  },
                  {
                    "boundingBox": {
                      "vertices": [
                        {
                          "x": 258,
                          "y": 416
                        },
                        {
                          "x": 392,
                          "y": 414
                        },
                        {
                          "x": 393,
                          "y": 458
                        },
                        {
                          "x": 259,
                          "y": 460
                        }
                      ]
                    },
                    "confidence": 0.99005646,
                    "property": {
                      "detectedLanguages": [
                        {
                          "confidence": 1,
                          "languageCode": "en"
                        }
                      ]
                    },
                    "symbols": [
                      {
                        "boundingBox": {
                          "vertices": [
                            {
                              "x": 258,
                              "y": 416
                            },
                            {
                              "x": 277,
                              "y": 416
                            },
                            {
                              "x": 278,
                              "y": 459
                            },
                            {
                              "x": 259,
                              "y": 459
                            }
                          ]
                        },
                        "confidence": 0.9889068,
                        "text": "s"
                      },
                      {
                        "boundingBox": {
                          "vertices": [
                            {
                              "x": 278,
                              "y": 416
                            },
                            {
                              "x": 292,
                              "y": 416
                            },
                            {
                              "x": 293,
                              "y": 459
                            },
                            {
                              "x": 279,
                              "y": 459
                            }
                          ]
                        },
                        "confidence": 0.9857492,
                        "text": "i"
                      },
                      {
                        "boundingBox": {
                          "vertices": [
                            {
                              "x": 294,
                              "y": 416
                            },
                            {
                              "x": 319,
                              "y": 416
                            },
                            {
                              "x": 320,
                              "y": 459
                            },
                            {
                              "x": 295,
                              "y": 459
                            }
                          ]
                        },
                        "confidence": 0.98814404,
                        "text": "n"
                      },
                      {
                        "boundingBox": {
                          "vertices": [
                            {
                              "x": 320,
                              "y": 415
                            },
                            {
                              "x": 345,
                              "y": 415
                            },
                            {
                              "x": 346,
                              "y": 458
                            },
                            {
                              "x": 321,
                              "y": 458
                            }
                          ]
                        },
                        "confidence": 0.99458134,
                        "text": "n"
                      },
                      {
                        "boundingBox": {
                          "vertices": [
                            {
                              "x": 348,
                              "y": 415
                            },
                            {
                              "x": 370,
                              "y": 415
                            },
                            {
                              "x": 371,
                              "y": 458
                            },
                            {
                              "x": 349,
                              "y": 458
                            }
                          ]
                        },
                        "confidence": 0.99214625,
                        "text": "e"
                      },
                      {
                        "boundingBox": {
                          "vertices": [
                            {
                              "x": 372,
                              "y": 414
                            },
                            {
                              "x": 392,
                              "y": 414
                            },
                            {
                              "x": 393,
                              "y": 457
                            },
                            {
                              "x": 373,
                              "y": 457
                            }
                          ]
                        },
                        "confidence": 0.99081105,
                        "property": {
                          "detectedBreak": {
                            "type": "SPACE"
                          }
                        },
                        "text": "r"
                      }
                    ]
                  },
                  {
                    "boundingBox": {
                      "vertices": [
                        {
                          "x": 405,
                          "y": 413
                        },
                        {
                          "x": 474,
                          "y": 412
                        },
                        {
                          "x": 475,
                          "y": 456
                        },
                        {
                          "x": 406,
                          "y": 457
                        }
                      ]
                    },
                    "confidence": 0.9900727,
                    "property": {
                      "detectedLanguages": [
                        {
                          "confidence": 1,
                          "languageCode": "en"
                        }
                      ]
                    },
                    "symbols": [
                      {
                        "boundingBox": {
                          "vertices": [
                            {
                              "x": 405,
                              "y": 414
                            },
                            {
                              "x": 432,
                              "y": 414
                            },
                            {
                              "x": 433,
                              "y": 457
                            },
                            {
                              "x": 406,
                              "y": 457
                            }
                          ]
                        },
                        "confidence": 0.9933794,
                        "text": "h"
                      },
                      {
                        "boundingBox": {
                          "vertices": [
                            {
                              "x": 433,
                              "y": 413
                            },
                            {
                              "x": 456,
                              "y": 413
                            },
                            {
                              "x": 457,
                              "y": 456
                            },
                            {
                              "x": 434,
                              "y": 456
                            }
                          ]
                        },
                        "confidence": 0.9883288,
                        "text": "a"
                      },
                      {
                        "boundingBox": {
                          "vertices": [
                            {
                              "x": 457,
                              "y": 413
                            },
                            {
                              "x": 474,
                              "y": 413
                            },
                            {
                              "x": 475,
                              "y": 456
                            },
                            {
                              "x": 458,
                              "y": 456
                            }
                          ]
                        },
                        "confidence": 0.9885099,
                        "property": {
                          "detectedBreak": {
                            "type": "SPACE"
                          }
                        },
                        "text": "s"
                      }
                    ]
                  },
                  {
                    "boundingBox": {
                      "vertices": [
                        {
                          "x": 490,
                          "y": 412
                        },
                        {
                          "x": 513,
                          "y": 412
                        },
                        {
                          "x": 514,
                          "y": 455
                        },
                        {
                          "x": 491,
                          "y": 455
                        }
                      ]
                    },
                    "confidence": 0.990483,
                    "property": {
                      "detectedLanguages": [
                        {
                          "confidence": 1,
                          "languageCode": "en"
                        }
                      ]
                    },
                    "symbols": [
                      {
                        "boundingBox": {
                          "vertices": [
                            {
                              "x": 490,
                              "y": 412
                            },
                            {
                              "x": 513,
                              "y": 412
                            },
                            {
                              "x": 514,
                              "y": 455
                            },
                            {
                              "x": 491,
                              "y": 455
                            }
                          ]
                        },
                        "confidence": 0.990483,
                        "property": {
                          "detectedBreak": {
                            "type": "SPACE"
                          }
                        },
                        "text": "a"
                      }
                    ]
                  },
                  {
                    "boundingBox": {
                      "vertices": [
                        {
                          "x": 524,
                          "y": 411
                        },
                        {
                          "x": 653,
                          "y": 409
                        },
                        {
                          "x": 654,
                          "y": 453
                        },
                        {
                          "x": 525,
                          "y": 455
                        }
                      ]
                    },
                    "confidence": 0.99245286,
                    "property": {
                      "detectedLanguages": [
                        {
                          "confidence": 1,
                          "languageCode": "en"
                        }
                      ]
                    },
                    "symbols": [
                      {
                        "boundingBox": {
                          "vertices": [
                            {
                              "x": 524,
                              "y": 412
                            },
                            {
                              "x": 544,
                              "y": 412
                            },
                            {
                              "x": 545,
                              "y": 455
                            },
                            {
                              "x": 525,
                              "y": 455
                            }
                          ]
                        },
                        "confidence": 0.99152976,
                        "text": "f"
                      },
                      {
                        "boundingBox": {
                          "vertices": [
                            {
                              "x": 539,
                              "y": 411
                            },
                            {
                              "x": 566,
                              "y": 411
                            },
                            {
                              "x": 567,
                              "y": 454
                            },
                            {
                              "x": 540,
                              "y": 454
                            }
                          ]
                        },
                        "confidence": 0.9954258,
                        "text": "u"
                      },
                      {
                        "boundingBox": {
                          "vertices": [
                            {
                              "x": 565,
                              "y": 411
                            },
                            {
                              "x": 584,
                              "y": 411
                            },
                            {
                              "x": 585,
                              "y": 454
                            },
                            {
                              "x": 566,
                              "y": 454
                            }
                          ]
                        },
                        "confidence": 0.99430704,
                        "text": "t"
                      },
                      {
                        "boundingBox": {
                          "vertices": [
                            {
                              "x": 582,
                              "y": 410
                            },
                            {
                              "x": 611,
                              "y": 409
                            },
                            {
                              "x": 612,
                              "y": 452
                            },
                            {
                              "x": 583,
                              "y": 453
                            }
                          ]
                        },
                        "confidence": 0.9916401,
                        "text": "u"
                      },
                      {
                        "boundingBox": {
                          "vertices": [
                            {
                              "x": 611,
                              "y": 410
                            },
                            {
                              "x": 630,
                              "y": 410
                            },
                            {
                              "x": 631,
                              "y": 453
                            },
                            {
                              "x": 612,
                              "y": 453
                            }
                          ]
                        },
                        "confidence": 0.9872682,
                        "text": "r"
                      },
                      {
                        "boundingBox": {
                          "vertices": [
                            {
                              "x": 631,
                              "y": 410
                            },
                            {
                              "x": 653,
                              "y": 410
                            },
                            {
                              "x": 654,
                              "y": 453
                            },
                            {
                              "x": 632,
                              "y": 453
                            }
                          ]
                        },
                        "confidence": 0.9945463,
                        "text": "e"
                      }
                    ]
                  },
                  {
                    "boundingBox": {
                      "vertices": [
                        {
                          "x": 657,
                          "y": 409
                        },
                        {
                          "x": 665,
                          "y": 409
                        },
                        {
                          "x": 666,
                          "y": 452
                        },
                        {
                          "x": 658,
                          "y": 452
                        }
                      ]
                    },
                    "confidence": 0.96788424,
                    "property": {
                      "detectedLanguages": [
                        {
                          "confidence": 1,
                          "languageCode": "en"
                        }
                      ]
                    },
                    "symbols": [
                      {
                        "boundingBox": {
                          "vertices": [
                            {
                              "x": 657,
                              "y": 409
                            },
                            {
                              "x": 665,
                              "y": 409
                            },
                            {
                              "x": 666,
                              "y": 452
                            },
                            {
                              "x": 658,
                              "y": 452
                            }
                          ]
                        },
                        "confidence": 0.96788424,
                        "property": {
                          "detectedBreak": {
                            "type": "LINE_BREAK"
                          }
                        },
                        "text": "."
                      }
                    ]
                  }
          ]
        }
      ]
    }''';

    final jsonData = jsonDecode(jsonString);
    return TextBlock.fromJson(jsonData);
  }
}


class BoundingBox {
  final List<Vertex> vertices;

  BoundingBox({required this.vertices});

  factory BoundingBox.fromJson(Map<String, dynamic> json) {
    var list = json['vertices'] as List;
    List<Vertex> verticesList =
    list.map((i) => Vertex.fromJson(i)).toList();

    return BoundingBox(vertices: verticesList);
  }
}

class Vertex {
  final double x;
  final double y;

  Vertex({required this.x, required this.y});

  factory Vertex.fromJson(Map<String, dynamic> json) {
    return Vertex(x: json['x'].toDouble(), y: json['y'].toDouble());
  }
}

class TextBlock {
  final BoundingBox boundingBox;
  final double confidence;
  final List<Paragraph> paragraphs;

  TextBlock({
    required this.boundingBox,
    required this.confidence,
    required this.paragraphs,
  });

  factory TextBlock.fromJson(Map<String, dynamic> json) {
    var list = json['paragraphs'] as List;
    List<Paragraph> paragraphsList =
    list.map((i) => Paragraph.fromJson(i)).toList();

    return TextBlock(
      boundingBox: BoundingBox.fromJson(json['boundingBox']),
      confidence: json['confidence'].toDouble(),
      paragraphs: paragraphsList,
    );
  }
}

class Paragraph {
  final BoundingBox boundingBox;
  final double confidence;
  final List<Word> words;

  Paragraph({
    required this.boundingBox,
    required this.confidence,
    required this.words,
  });

  factory Paragraph.fromJson(Map<String, dynamic> json) {
    var list = json['words'] as List;
    List<Word> wordsList =
    list.map((i) => Word.fromJson(i)).toList();

    return Paragraph(
      boundingBox: BoundingBox.fromJson(json['boundingBox']),
      confidence: json['confidence'].toDouble(),
      words: wordsList,
    );
  }
}

class Word {
  final BoundingBox boundingBox;
  final double confidence;
  final List<Symbol> symbols;

  Word({
    required this.boundingBox,
    required this.confidence,
    required this.symbols,
  });

  factory Word.fromJson(Map<String, dynamic> json) {
    var list = json['symbols'] as List;
    List<Symbol> symbolsList =
    list.map((i) => Symbol.fromJson(i)).toList();

    return Word(
      boundingBox: BoundingBox.fromJson(json['boundingBox']),
      confidence: json['confidence'].toDouble(),
      symbols: symbolsList,
    );
  }
}

class Symbol {
  final BoundingBox boundingBox;
  final double confidence;
  final String text;

  Symbol({
    required this.boundingBox,
    required this.confidence,
    required this.text,
  });

  factory Symbol.fromJson(Map<String, dynamic> json) {
    return Symbol(
      boundingBox: BoundingBox.fromJson(json['boundingBox']),
      confidence: json['confidence'].toDouble(),
      text: json['text'],
    );
  }
}

class TextBlockPainter extends CustomPainter {
  final TextBlock textBlock;

  TextBlockPainter(this.textBlock);

  @override
  void paint(Canvas canvas, Size size) {
    const imgSize = 800;
    final rate = size.width / imgSize;
    final paint = Paint()
      ..color = Colors.black.withOpacity(0.9)
      ..colorFilter = ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.color)
      ..style = PaintingStyle.fill
      ..strokeWidth = 0;

    for (var paragraph in textBlock.paragraphs) {
      for (var word in paragraph.words) {
        for (var symbol in word.symbols) {
          final vertices = symbol.boundingBox.vertices;
          final path = Path()
            ..moveTo(vertices[0].x * rate, vertices[0].y * rate)
            ..lineTo(vertices[1].x * rate, vertices[1].y * rate)
            ..lineTo(vertices[2].x * rate, vertices[2].y * rate)
            ..lineTo(vertices[3].x * rate, vertices[3].y * rate)
            ..close();

          canvas.drawPath(path, paint);
          final textPainter = TextPainter(
            textAlign: TextAlign.center,
            text: TextSpan(
              text: symbol.text,
              style: const TextStyle(
                color: Colors.orange,
                fontSize: 16.0,
              ),
            ),
            textDirection: TextDirection.ltr,
          )..layout();

          textPainter.paint(canvas, Offset(vertices[0].x* rate, vertices[0].y* rate));
        }
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class TextBlockWidget extends StatelessWidget {
  final TextBlock textBlock;

  TextBlockWidget(this.textBlock);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.width,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/img.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: CustomPaint(
        painter: TextBlockPainter(textBlock),
      ),
    );
  }
}

