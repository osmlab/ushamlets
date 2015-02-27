// -- roads ---------------------------------

#bridge { opacity: .5; }
#road { opacity:.45; }

// =====================================================================
// ROAD LABELS
// =====================================================================

// highway shield

#road_label[class='motorway'][reflen>=1][reflen<=6],
#road_label[class='main'][reflen>=1][reflen<=6] {
  shield-name: "[ref]";
  shield-size: 9;
  shield-face-name: @sans_bold;
  shield-fill: #000;
  shield-spacing: 200;
  shield-avoid-edges: true;
  shield-min-distance: 50;
  shield-file: url('img/shield/generic-sm-[reflen].svg');
  [zoom>14] {
    shield-spacing: 400;
    shield-min-distance: 60;
    shield-size: 11;
    shield-file: url('img/shield/generic-md-[reflen].svg');
  }
}

// regular labels
#road_label {
  // Longer roads get a label earlier as they are likely to be more
  // important. This especially helps label density in rural/remote areas.
  // This z14 filter is *not* redundant to logic in SQL queries. Because z14
  // includes all data for z14+ via overzooming, the streets included in a
  // z14 vector tile include more features than ideal for optimal performance.
  [class='motorway'][zoom>=12],
  [class='main'][zoom>13][len>3000],
  [class='main'][zoom>14][len>1000],
  [class='main'][zoom>15],
  [class='street'][zoom>=15][len>1000],
  [class='street'][zoom>16],
  [class='street_limited'][zoom>16] {
    text-avoid-edges: true;
    text-transform: uppercase;
    text-name: @name;
    text-character-spacing: 0.25;
    text-placement: line;
    text-face-name: @sans;
    text-fill: @place_text;
    text-size: 8;
    text-halo-fill: fadeout(@place_halo,93);
    text-halo-radius: 2;
    text-halo-rasterizer: fast;
    text-min-distance: 200; // only for labels w/ the same name
    [zoom>=14] { text-size: 9; }
    [zoom>=16] { text-size: 11; }
    [zoom>=18] { text-size: 12; }
    [class='motorway'],
    [class='main'] {
      [zoom>=14] { text-size: 10; }
      [zoom>=16] { text-size: 11; }
      [zoom>=17] { text-size: 12; }
      [zoom>=18] { text-size: 14; }
    }
  }
}

/**/