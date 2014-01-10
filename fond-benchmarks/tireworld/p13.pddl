(define (problem tire_41_0_17711)
  (:domain tire)
  (:objects n0 n1 n2 n3 n4 n5 n6 n7 n8 n9 n10 n11 n12 n13 n14 n15 n16 n17 n18 n19 n20 n21 n22 n23 n24 n25 n26 n27 n28 n29 n30 n31 n32 n33 n34 n35 n36 n37 n38 n39 n40 - location)
  (:init (vehicle-at n20)
         (road n0 n4) (road n4 n0)
         (road n0 n20) (road n20 n0)
         (road n0 n24) (road n24 n0)
         (road n0 n36) (road n36 n0)
         (road n0 n39) (road n39 n0)
         (road n1 n3) (road n3 n1)
         (road n1 n9) (road n9 n1)
         (road n1 n14) (road n14 n1)
         (road n1 n25) (road n25 n1)
         (road n1 n29) (road n29 n1)
         (road n1 n30) (road n30 n1)
         (road n2 n7) (road n7 n2)
         (road n2 n24) (road n24 n2)
         (road n2 n26) (road n26 n2)
         (road n2 n37) (road n37 n2)
         (road n4 n11) (road n11 n4)
         (road n4 n18) (road n18 n4)
         (road n4 n19) (road n19 n4)
         (road n4 n21) (road n21 n4)
         (road n4 n29) (road n29 n4)
         (road n4 n34) (road n34 n4)
         (road n4 n37) (road n37 n4)
         (road n4 n40) (road n40 n4)
         (road n5 n12) (road n12 n5)
         (road n5 n21) (road n21 n5)
         (road n5 n25) (road n25 n5)
         (road n5 n32) (road n32 n5)
         (road n5 n33) (road n33 n5)
         (road n5 n34) (road n34 n5)
         (road n6 n7) (road n7 n6)
         (road n6 n17) (road n17 n6)
         (road n6 n22) (road n22 n6)
         (road n6 n28) (road n28 n6)
         (road n6 n39) (road n39 n6)
         (road n7 n11) (road n11 n7)
         (road n7 n13) (road n13 n7)
         (road n7 n15) (road n15 n7)
         (road n7 n17) (road n17 n7)
         (road n7 n23) (road n23 n7)
         (road n7 n24) (road n24 n7)
         (road n7 n29) (road n29 n7)
         (road n7 n31) (road n31 n7)
         (road n7 n33) (road n33 n7)
         (road n7 n34) (road n34 n7)
         (road n7 n38) (road n38 n7)
         (road n7 n40) (road n40 n7)
         (road n8 n26) (road n26 n8)
         (road n8 n34) (road n34 n8)
         (road n9 n13) (road n13 n9)
         (road n9 n15) (road n15 n9)
         (road n9 n19) (road n19 n9)
         (road n9 n22) (road n22 n9)
         (road n9 n27) (road n27 n9)
         (road n9 n37) (road n37 n9)
         (road n10 n25) (road n25 n10)
         (road n10 n29) (road n29 n10)
         (road n10 n39) (road n39 n10)
         (road n10 n40) (road n40 n10)
         (road n11 n13) (road n13 n11)
         (road n11 n18) (road n18 n11)
         (road n11 n19) (road n19 n11)
         (road n11 n38) (road n38 n11)
         (road n11 n39) (road n39 n11)
         (road n11 n40) (road n40 n11)
         (road n12 n17) (road n17 n12)
         (road n12 n18) (road n18 n12)
         (road n12 n21) (road n21 n12)
         (road n12 n26) (road n26 n12)
         (road n12 n36) (road n36 n12)
         (road n13 n21) (road n21 n13)
         (road n13 n25) (road n25 n13)
         (road n13 n29) (road n29 n13)
         (road n13 n32) (road n32 n13)
         (road n13 n33) (road n33 n13)
         (road n13 n36) (road n36 n13)
         (road n13 n38) (road n38 n13)
         (road n14 n36) (road n36 n14)
         (road n14 n37) (road n37 n14)
         (road n14 n40) (road n40 n14)
         (road n15 n17) (road n17 n15)
         (road n15 n33) (road n33 n15)
         (road n15 n36) (road n36 n15)
         (road n16 n19) (road n19 n16)
         (road n16 n20) (road n20 n16)
         (road n16 n30) (road n30 n16)
         (road n16 n31) (road n31 n16)
         (road n17 n20) (road n20 n17)
         (road n17 n34) (road n34 n17)
         (road n17 n36) (road n36 n17)
         (road n17 n38) (road n38 n17)
         (road n18 n35) (road n35 n18)
         (road n18 n36) (road n36 n18)
         (road n18 n39) (road n39 n18)
         (road n19 n21) (road n21 n19)
         (road n19 n28) (road n28 n19)
         (road n20 n21) (road n21 n20)
         (road n20 n24) (road n24 n20)
         (road n20 n27) (road n27 n20)
         (road n20 n28) (road n28 n20)
         (road n20 n32) (road n32 n20)
         (road n20 n38) (road n38 n20)
         (road n20 n39) (road n39 n20)
         (road n21 n26) (road n26 n21)
         (road n21 n28) (road n28 n21)
         (road n21 n34) (road n34 n21)
         (road n21 n35) (road n35 n21)
         (road n21 n36) (road n36 n21)
         (road n21 n38) (road n38 n21)
         (road n22 n23) (road n23 n22)
         (road n22 n24) (road n24 n22)
         (road n22 n25) (road n25 n22)
         (road n22 n33) (road n33 n22)
         (road n22 n35) (road n35 n22)
         (road n22 n37) (road n37 n22)
         (road n23 n25) (road n25 n23)
         (road n23 n27) (road n27 n23)
         (road n23 n31) (road n31 n23)
         (road n23 n32) (road n32 n23)
         (road n23 n33) (road n33 n23)
         (road n23 n35) (road n35 n23)
         (road n24 n25) (road n25 n24)
         (road n24 n30) (road n30 n24)
         (road n25 n31) (road n31 n25)
         (road n25 n35) (road n35 n25)
         (road n25 n37) (road n37 n25)
         (road n25 n40) (road n40 n25)
         (road n26 n29) (road n29 n26)
         (road n26 n33) (road n33 n26)
         (road n26 n38) (road n38 n26)
         (road n26 n40) (road n40 n26)
         (road n27 n28) (road n28 n27)
         (road n27 n29) (road n29 n27)
         (road n27 n34) (road n34 n27)
         (road n27 n35) (road n35 n27)
         (road n28 n30) (road n30 n28)
         (road n28 n31) (road n31 n28)
         (road n28 n32) (road n32 n28)
         (road n28 n33) (road n33 n28)
         (road n28 n35) (road n35 n28)
         (road n28 n36) (road n36 n28)
         (road n28 n39) (road n39 n28)
         (road n28 n40) (road n40 n28)
         (road n29 n30) (road n30 n29)
         (road n29 n35) (road n35 n29)
         (road n29 n38) (road n38 n29)
         (road n29 n39) (road n39 n29)
         (road n29 n40) (road n40 n29)
         (road n30 n36) (road n36 n30)
         (road n30 n37) (road n37 n30)
         (road n30 n38) (road n38 n30)
         (road n31 n36) (road n36 n31)
         (road n31 n39) (road n39 n31)
         (road n32 n35) (road n35 n32)
         (road n32 n40) (road n40 n32)
         (road n33 n37) (road n37 n33)
         (road n33 n38) (road n38 n33)
         (road n33 n39) (road n39 n33)
         (road n33 n40) (road n40 n33)
         (road n34 n37) (road n37 n34)
         (road n34 n39) (road n39 n34)
         (road n35 n37) (road n37 n35)
         (road n35 n38) (road n38 n35)
         (road n35 n39) (road n39 n35)
         (road n35 n40) (road n40 n35)
         (road n36 n37) (road n37 n36)
         (road n36 n38) (road n38 n36)
         (road n36 n39) (road n39 n36)
         (road n37 n39) (road n39 n37)
         (road n38 n39) (road n39 n38)
         (road n38 n40) (road n40 n38)
         (road n39 n40) (road n40 n39)
         (spare-in n2)
         (spare-in n3)
         (spare-in n6)
         (spare-in n7)
         (spare-in n9)
         (spare-in n11)
         (spare-in n12)
         (spare-in n13)
         (spare-in n17)
         (spare-in n21)
         (spare-in n22)
         (spare-in n23)
         (spare-in n25)
         (spare-in n26)
         (spare-in n27)
         (spare-in n28)
         (spare-in n30)
         (spare-in n32)
         (spare-in n34)
         (spare-in n35)
         (spare-in n38)
         (spare-in n40)
         (not-flattire)
  )
  (:goal (vehicle-at n4))
)