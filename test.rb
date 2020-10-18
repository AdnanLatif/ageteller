w = <USER INPUT>;
ag = <USER INPUT>;

function avgVal(w, ag) {
 listVals = query("SELECT avg_weight, age FROM user_stats");
 otherVals = query("SELECT avgWeight, age FROM world_health_stats");

 declare var isAv;

 for (val in listVals) {
   for (val2 in otherVals) {
     if (val.age == val2.age && val.avg_weight == val2.avgWeight && val.age == ag && val.avg_weight == w) {
      isAv = true;
      break;
     }
   }
   if (isAv) {
     break;
   }
 }

 if (isAv == undefined) {
   isAv = false;
 }

 return isAv;
}

exceptionMessage = "Cannot determine if user age and weight are average";

if (w > 50) {
 if (ag >= 6) {
   return avgVal(w, ag);
 }
 else {
   throw exceptionMessage;
 }
} else {
 if (ag < 12) {
   return avgVal(w, ag);
 }
 else {
   throw exceptionMessage;
 }
}