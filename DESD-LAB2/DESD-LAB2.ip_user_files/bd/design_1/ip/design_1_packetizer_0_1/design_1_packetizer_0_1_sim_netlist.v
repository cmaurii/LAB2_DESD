// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Fri Mar 21 12:22:04 2025
// Host        : gbonanno-b450gamingx running 64-bit Ubuntu 24.04.2 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/gbonanno/Documents/DIdattica/DESD2025/LAB2/template/DESD-LAB2/DESD-LAB2.gen/sources_1/bd/design_1/ip/design_1_packetizer_0_1/design_1_packetizer_0_1_sim_netlist.v
// Design      : design_1_packetizer_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_packetizer_0_1,packetizer,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "packetizer,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module design_1_packetizer_0_1
   (clk,
    aresetn,
    s_axis_tdata,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tlast,
    m_axis_tdata,
    m_axis_tvalid,
    m_axis_tready);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF m_axis:s_axis, ASSOCIATED_RESET aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* x_interface_parameter = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TDATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) input [7:0]s_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TVALID" *) input s_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TREADY" *) output s_axis_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TLAST" *) input s_axis_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TDATA" *) (* x_interface_parameter = "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) output [7:0]m_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TVALID" *) output m_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TREADY" *) input m_axis_tready;

  wire aresetn;
  wire clk;
  wire [7:0]m_axis_tdata;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire [7:0]s_axis_tdata;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire s_axis_tvalid;

  (* FOOTER = "241" *) 
  (* HEADER = "255" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* is_du_within_envelope = "true" *) 
  design_1_packetizer_0_1_packetizer U0
       (.aresetn(aresetn),
        .clk(clk),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .s_axis_tdata({1'b0,s_axis_tdata[6:0]}),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tready(s_axis_tready),
        .s_axis_tvalid(s_axis_tvalid));
endmodule
`pragma protect begin_protected
`pragma protect version = 2
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`pragma protect begin_commonblock
`pragma protect control error_handling = "delegated"
`pragma protect control runtime_visibility = "delegated"
`pragma protect control child_visibility = "delegated"
`pragma protect control decryption = "true"
`pragma protect end_commonblock
`pragma protect begin_toolblock
`pragma protect rights_digest_method="sha256"
`pragma protect key_keyowner = "Xilinx", key_keyname= "xilinxt_2020_08", key_method = "rsa", key_block
n7CNZmaL4L26esHyZoBfVRHACXCpvoi9/hVd9zGmiSe+YOsD9q/io3E34lUlLncL8BsixPgc06Sq
3cAPTtRK9E3XLzhfoMUeoxxFIVjX4j76YmYRFlV7mZjilQe0lS3fsfgHxN2swLd4MadRrhRgivn0
3fX2QhRzBkMeJKd0GRK2Ns1QIrrAW4X8IK3snrXYIGCYrXCpJg15EErZTLTrSrJy4kcYGCNOvASB
6Qm9Mn/yr2+POOyUS4Vo9okLl+yDJDJ893GYl5kg24B1MmxBlJvUw4pbb7jxCHT9gmr6cZNhtRzr
vtD6LOkM37fYXdv2+tMxYXp1Q6xzh5tyG0YxIw==

`pragma protect control xilinx_configuration_visible = "false"
`pragma protect control xilinx_enable_modification = "false"
`pragma protect control xilinx_enable_probing = "false"
`pragma protect control xilinx_enable_netlist_export = "true"
`pragma protect control xilinx_enable_bitstream = "true"
`pragma protect control decryption = "true"
`pragma protect end_toolblock="ZgITgleYLY2Pp5w3ly8gfEqUwk//w770giI/VdFzyVU="
`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 6576)
`pragma protect data_block
TEtR2/KriJAPnIO9xHQN2sDjWRhTQhgAvAMh3OWXObuIlY/IZJXQP2AFfz9/ulScQlg2ll6z2AKi
B17LUw1ZqrLSkFO/1tjsSwJFK9ON0bygax6e9BqGVUKjtCSMsNtk9q7Mg7uLaLoWFhia1rH8FVd3
/VyiImU3bM3T96Zw6r7RxCx+FXE8YmqUdl5k4iNHUa/KViyIq8DcemKM0yKGNMwcFS1197wYAiGs
sHgr4FKlF77u8HHynck/BEkGXr6PRW7x3M6O8IYUaO24Xm5lwogb+tEiztGApJ4tG+1ApHx7GI8t
J9vBwmuuXrXD4qqcBxMVNYiLkPO6GMIwMy0HlBpuJWSrWNesoO42GomBabvkjrlsSupY0EnheFJ3
yhj/EVk8LtIARyKFuybD64WGveo/selmYipERRfIL8kYpBEdTTnaFJwezCoMjP9cZHm3nWsYqi9u
3LZAvMaDqpqcRO+yC/HuYsOSKA6b7wLf8B/g4PySCGpNk7J1NBGqxN8u6vCcXtiYokEEPyBJ8y96
S90dddz8o0HH1cD8Snp66MAhXBd/IXCM8rQKwaViFLPEJKrctNkuci0fFFB1VUXyU/ncBnCxOCGH
ntLSvb+H6LFOTSAOxUpAgnuK5QTlXh1ONzfGdpwo+BVDaBczmM9PVda4eAZO52xkAavIFXdZGL0J
7jF4c/4++veQ79crH0ptAfepDtVDCjRezV48AfQVgmHrHg7fEM5QiCOlPkVKZYoQtP6jg56dABRW
CCz6aFiNGtz5/fSRTK6UEy57/HK0tiyfpPOMyp7QPGiAK9l6HHGLzGYXCl2YWX2ty3KNa8/N8RNy
IdXYN/jxXYNdEHf7XTZY7YmZAUzrn4OjgLGTqHNEfnUdBrK7Nlnb+XFln5vQGstGjaQ58hrRFY0i
UGWQ6pTg3JStUsbKTmRbH2UspcCwkvyIz7Ke0+KY4rbyPhAT1FmqD1wOuVM2IlmRDRcP/HD02qX9
8O+lE09lr0t22U7xSM0lbsVJP5O81sxTejWUgYHhEO1TYTmWUspsQ9Cm1/AJQbZHOaAf5dciDcue
Qx9h6iJQK5dgOq0E7VUSMd0dzccyM7uBSD/Q2gYNfbi8C6zNY3B1CDBqbcXf86Mil9s+3j62sb9/
UxP3xg3a9sHWFEe4IC01veAmLp0OQU5ENi2xPECq9nmrIPdvmw1OX2bFo+b3oijTlK0shA13Mugn
KJgq6031hj1XNMM/VzkVRXsAkaEYMesu5jabxwG0WkD9lSN/FGWf2iqddU7AzetKD4gfbre9TQQL
Wl4BJP+jAWXwziGxTVwWpzFfWGqdXHSZczZiWtGzLd0orGxjF+bksLQsa5a+M4LZaSaHbirJIHls
thpv8PCidCZzurPQ8mgNnWF3UUzo4x661i2KmW1O5XLXYBESa7ncreh3/eIlzRKQik4CD4gNwSqQ
VMFZ056xKbNsCqqoP0DGxUsXqHJAHBBbtM4XXpYoiFwkMwJz9bUqwCmumY8VRklWqQDnCD2VOVmI
0qjY/4UTuc5GVWExiz1CIlNWD54tMOfS+1ML5bfk8+dBJ941SCWoq18dhEWGrZGs+1NDyhrW2RM8
fmWKr0GdXGTM7PAaah7fvctyHpddXQlTeDw1gyB2oGA7yww3YqT0AFLmoOas/EsL1ogrTb+63pu+
JnnrINz/a0ZTVoewtnBxm6joykf1pcO/wfcYjnkRT3YJHhGfe5QBeJT9ZfETT0E8Hq+MiXw+nwuX
pmukm28tVpqSRPkHFwFC8SudFsNpDJTZAenSjCnmWIPm2mhv5DSCxkyH3M0oU3xwA9hsrl8dSY6P
RDEGYgZu0j5My4Z9NsvBmdS6kIhhTiYdF0tiACNiErCWcyJY9ZpUEtVyzGQp4OdhC9l/da17GPFo
Uni4JZ5Whaf2EQaogiXwgZkVMuhb88nTsEAWAGRqKN96erCTU4goK0xld5Z1eBp0H768EzPNBErd
GYLR/cQz9hpsaun6mdtjDPxX7t/1vlq/zgb1rOluPsTKrWoZI1G3Lk/wdqpf+UGoLB7BDFO7lE6Z
xyqZQlOpWtB1JS8HE+wjRshYBMDBflNJxt0PM3b14KATONmgZdo9piJuIfT1GljLXKNGL0gjBwIk
0UovQCnZ9IDAWKm6qm1sTXaigGNlP0J/dUPGrB6EA4VZPYQMZBY9jSCOEHiL2/PI5KyLK+5HCys3
GfpfBAUSHWNCD6q3FkofnNPlxH9mJ1FYkV7dGO5l00HnNSk4xrWfBf9KP14J9Jlog1RtgplDbb2O
3EgZn0lrGqjXj22mU2x6wMCVyXWYm/u8hua8EqzZcq+uTFllZWoWNZH7BuvSWGZy+aVF6yiI8UZd
ygJDshHlFvJncZjcHJVruA4OciCxtuPtpoMHpDWF47USIqHoL4C5MjOHpb/4QikTOiFW5AuUZCyu
vz3vnaQw87LMoeVO11YBAYAnJFf0cdSP46CG0NZNnFR4++YYQCKeNtQ5QZDdXMAkN9qTOM4x1N61
JMVmmDvjjfk1r6bPaWlpy6SGibsQecEb917XS/E87bmYmbtDsfrIG3D6GLLjmA8Fuhw/Nf8uPyHb
krzL+h5hePewIZXpeytDVyt5uHPBJTk+gRTugvruxEjulDMQk8163C6kZhw0hqY8+qoo8TUecR20
Q50pI3RmqifcQ5m18kGsA67sCEKNUzU9+AxXGZ/0tKz5pJi57l9HWVYeOkR73wQdaVmWBAnRudJ+
+VGTV4CbPOE1ViDxDUCrSrC6ub8Knk9wIUhyLguPEyFxTTa8C7rLLwzdR2VWIw/JjjUoKR2eMT28
kKa8SiFPhd+TJynZ3IKxbczp2A9sZkOhnV9CfvEPSg8sb0RJ/e0GE/3l/jSxuEmWhw0Eb4auWIPy
+X7wVt5aPeMTFjE5WhVdm0L3vzeKVGkf25C0R1dkeY/rHRuW4HpDgEZhQYyzwTBXcUFOiyaFQukh
t59BCI7ifh1PyMosbEzVQzA+1n2BWuRLOwKEYnI42b/q9gGSDMPKgzVzfcjQdMGi+YW5PH9nqe6k
GUTIIbCrbj/uZOYdkKbuSVndTUwj41tnc6XW44ChrbVs9Lnn3iavwRLRpUWLsuNx13Fkt+AurzDU
10LJ+Ts/GSpWxkyExNzg/6RLfLM6aLq8hiy4TvV6LY2+nLlUmei+WKVcRyw/YHMq0hsEF9EXP1qN
OhWx3OvhS5iE9Pm8UmNjQ/Z2jqk1ZGhKUTLuax4GGX0eMF3b9r3TLldV2rB3VrhBK9EdSvTPpj0q
JtR5P0h31K6oXUJFHOI/Iq3roHtKO2tX4l6OksFbGsmBvcaT211kIkay55xgT/ZXt2ODEpa8q2wL
PN8aPHcn2VXLTiExv4/wwa2LI/QhU9u2wtao0JEOJ/M3hC0ysbATTF5xFyXbeEkPtayKAGc3QRvN
XM1srdypP12OZubNafAlaLRz7rKyc9T+OxGanHb5lZ0fcmgI0XRDZBU3pJUeYpAtE2L6webaWPt7
adOKvrM+PdU6tY4ysnqwY8kxlkJ2o1jzoBp6gzao1diyt3GMQV7B0j9oUQMNdrGCbnpKuVQOpzqB
wyEHDjrQFa96AD0hEYel5GfnzP86BBp+B1PXX49NBIW3+V0sdagtHSWJnXKpO5j/xrMlaUepYH2a
jG8YJlB7RqC+A7N3RhiI4pInrK+OnOA+mXiPuqzcLWxR58kHoe0Gbi+eSzI0SFs9254Pik00sY+1
oAOGlEit6AeIIGN4mUSa7sCwwbOHoHwoxEh9qon2eH0TYEGQy9UQfucTkXtrP1UQ2JBvjmKyYs2B
UMcvpCTdtI9i4IfrbXOo7MuAUYRov8MciVV65+1dwR6+PDU+6Yl2iu1nEZ2yItmi2Zs4nEk9r/Mq
c1cjM8VVsUABjnJkuzD1kkqyxrGqBLGJUC/cVdrUlQiyfeOzSDJzoBBawR5jqNSVamH69M6/Qk9i
7toz9HpBdsRA35KChbg5wobjFt6ivA9k0XfbbJJRMQTgORAZvI8f80GH519SYmVUZwVMJuskMd2t
uVuwBpgtVg0kwYYgCwS2M9L2opCRkG1M3BzVO+qiU7ymoVXqMnA+6Pbq/DZYGzfOS7vpQgf+7Xzv
wyM48HboWhQw0oYBAcfFPd2nA8Bhamxdc/WP/BCamTU4/h5nuV0gSgwftOA+uleOYMCGUXOMqbJa
mhGHPwaz3RbxuJbKWSRkTV0DzORbQcPwKTbHnAFj1aBnPjNmgTOXEf3DlnxNfn1bQQoUgKqLnGm/
u4qjPgbB3y2DyUYja7/pOnH/ov0Oysrm4aB5n/gpO2lC5TsoU1yq7YdVtR0SG/JRxgzTguPX5OsP
NVAqLdBUbFFdLxn9+ZZkQIu0TK6UUf+Zhj9q8Do0uGNJSPccfnxApuumSpegA8epLylrqRmdPzGD
x7qbrHsugzCXF+DPkk3kLKvNc8MbjiSjrxq2IiYEEJtJVGrqi7QQSSLggUvNdEjUfayjZbYb3cCO
YisbzfoLCZwi1HoNNbGuS4GBj3su7sJpOmKafEc8+mWPbLpoKIhQo8mQglpFGlqUov9Iu90Rfs9F
bfCN5WL8jLV14Q55dB2LQP3Kvxw31HjrpUEgLeJ9adrNfiyeXMD36eyWgjI2whSlDQpXcGMWuNQb
FScRAc/nBGUor6WnaM6R7ptpjzaSOfpgq5VnG8gC9m7zOrGjvsWHxpFX+uMgr0TSa+IOdY5M6Cye
LGTvafvMQtCM8baTZSpxygCCgLQ1i6qeGqMbHGhdysMsj3irPMA8ycxIYLMNnAvcY3v7gJ7aU6Qs
qynT8qVkcjUE3ROIGHwXWHXWAuY3trTPLM33KMxcaGzxHZF3eIFc/Mm5sH98lTw2gLpIavZGsDl9
2Tnjc0X7Vr9ytKBZudUkWhsBfnKZZU7E+vMCGgNuy3uz4MD3EimU42EeUlbZ30WXPDFOq2uuC5oa
FG38gevF5iaJRpYNcuqePGQDYybgM4F4M52ImnVLY3BEH/9mGqB3g+xn53DKTkJRtNX2zXtCEWvu
+i72vJhrlFduWJwyjUi7Agyt8HFY37Z7LCrZiRoK5fwtdPlmoZWCbi+37cRuZ633bC6AdOZANJB4
r6oe9rQJz7Q6CWc1kY1SdnzTTWaRdnqLe8Vl7F+G8/ASLhXfGjWQUpmujoLM/ONKAqfnFRyfHVcA
ML9CQFUSnJzsfVDAib8MDZaFAfdZxxgpYskKJZFaJtXsLhOi+h7nFEjeTnE9lY3nbn4gHAO/ZKxp
mYLppRKVbqcjfWy+er33ZTD+0kXVMNPiKv+A6x1KD45xEyRHiaKFQPgBnpxrsrvgtyaPZWPayYcG
ldOCZYlgh7qFgZ76TkScw9D/7DoLpq+WRSM7Y1w/3a96jr9N6a+0Nn6uuAfKgaxdh5731lz5hcXf
Kh0rBSYGp+YyuihR6PCkqtDwR6v5dBf8pa/ClxY9Yk++bq790V89MZ7x1W3/9+m6OHXpVO1jlLT/
aVP2uaFB2fbTM3Q3ZjTXrVDOCOoB0mFtiAbxBepFeJNwZTLiEmojcAT6j/NDBtI8h8S0XwtnQ4cb
1nMMu+Y4TprSSV3S5qwOZx65cc5VswpzkRygNr4kmKbhXrxVh49WDBJrCtI2Bol1CwicW36ugaff
PZGN9un/C+8dC2hvIt41PT+b/3MZZYyGaRI5BPI3C5tsrfvZYzb48FrRNEdN446j1rU1khTHd2tc
5OsfRkhJ+5fQ3Le995CdGrO+QVhrDB8dnX6CCa5Fh4dAuwxicmZaiicGGJmPZv8KKpRyQsRaGeYK
eINc4rQWexBzCoUxlXzR0AePkKnxBURJqLxE/RtEVVgX97rNhJOeqbREwg4gWzNRwRAN/3aWI0vo
qSahYU063cxKFI6TUmEvTNAiycRlQif+1qaM4GZncwS9n+Fs7Qq4uTMRUldMP18TKu4KCXN2Up8j
9hWJaNAELZGKOd2/fvLkJdnnw3fDZbQGese0R6p7wtt/8uTUi+ofWJHZQK/ZYDOH9BO/tafRz38n
uQuIigcOYG0yQeruYQ1HnZadIvHLXX2MnFlDN7DpaT5ry2KS6YTVYsPDoDVLJlX0Kh7zGEhlciEq
bJyw+1Wb4yftMMDoIImoPkHEXcesj/MQ07pdicSOfohSgniWmXzWQEUU09pmXbaITmYcIe4tKq0T
pWvJ2qF/F+866FrpujiyJ3FreFk12NWEkeI+75rCwkIpOZ/9rGM+PZWgxOQ05v5b9NdcYc22slz/
scagRvvsuM+5JPEpodPmQhaM/7T6ZfywaOPTEdO6S1qNCrZUIlUFjaqVoR6su5UzRcErDvmZYpTx
fwOYeoa8oLZEk0jQaUknWyhWsiJBmECMBvFcM1ISiEhAd2dJTYKgEEpZi2SZsroE5dIIW3CFoAMP
ABR0vpMBBmG1I+u0DWY0+7WpfuG/iEGs38/u044PgpSvFmz22JBEw/pNxzG0C4e7JzwrZEj6Urm2
e4v3ehSyRQiumHLIYtIUFl4ip86jtqYAD4+Gwyw3M1jOM0z8oiACp6ErXcxlB/Ys6OSsucg60KYo
Ero9Z3cpKxBMslBCraD2Sx0sFX+njQblWnW7cBSD2F3G6+9hovSlK2h6L80+ZXV5gjsj65kGnpuA
qFD/t8lJPVUf3f29a43j3jmTIGP86CQFvBcA3Zbd/4XlFJ4nbmc8My62DYvoIAP3lLeM+xhda2W0
ZYsraPJ5DxNxC7cKs2oyIa638pQk4L5LLuvVX5CEPa3cw3Ny+S6fztdIOamUpgFwQDpiuPxHvfp3
qhsOtCohNx7+3oTjIpVy4VEIEwyWvOnxRX11Yu8OD0NaHmbxU3gqOBIZq8zntN4Q08gQqu+5wS0+
9GuV1dTv9BPs2u0LMEunV49pE5Rqs7spF7pOYEggJFSbDGi7tzb0N2LXsm//niVc0M1CM5V0IUyr
uqfsTFMkQP89RYFYOkKNFec6ng7UuZF1jaHszzEhRHEA0nV8NWadKXSDUkUARZNkcLI1IOU3iPCC
Afmc3phOuMinMmVFHbBG/LBcFOxetOMHdN5o0PWo94Ut4HnVH+3BkY/nx9K+6u5vIUNRSKsdwyQu
W/Ze+cxXJJaxnw3eFfhCBN8VqM+/oN4ZNUUreVSbz2Pf6Fxf9cAGXt6t5Xxb9e7PPAuB6krWJHrP
HCwN45kpM3TO8EDKi7Nn1KeDTnIUToYtznHBFOhpHocdjaqNWZlu9rQGkMNLNQ/JwPc3MahLTZm0
c9HFZOfmZ04hN6VQ3NKYTd446XnMt3GK3YBfC/O2DfNMLPDCw+oxTdD6LO+vSbKtZPGlCJloyAWH
CRNXoeM9HlMvdMnex0PVxCGWbB5rqDjgd9ycw0fnfqKSEtGCic/mVGQ281X0q+o7iSNP/R/tk0nw
swsZ8uqdmQHAR6C5GZwNlkeheZgNe6Nkjct13pQD+sXERQsWPUs05js9A/nxxz2tHguqRCkJAVW5
Ot4U+2oGlB7WUC5Y4Q+CMMC80yhUOaFG+50kI9MOrSsFz0A8KFCPbXW4FTp5oUwTOnfJGb+NXuRs
6wO7+s19xPewGYJGycALHry+D8ayynwRfioNFLF819Txs3Sn4Qr1y3VXb8lsguwWziF7ywwEucec
8VmV/qOfzC/lVMYSvlTkr+BoQkWCR6H9SwbrW0t5FPoov0+6QfRNzJ7qd2mVSJIXIcsOOkiqvKlF
bOa6yquy7pK8BS2ttouKS0FTfmZ/r+VDTYPQZix7A6xBEyQMDqXMbQcW9os7USk7apQ7WWN1CMRH
E5S0Pxooj52bpJRgfr5JNgeRQCkv/m06oCXiEtIfZuiIo61cFBx+1kn5ey2oCjWkrO7GOx8SHiY/
b92atekHl63/yVUYpqs1u+FsoH+jeTwJ3RsKeWwTw5ZuV8XwDXZunn8n+nOGJGuEeeov8D9zJ4l+
MQ/nZTsNCCl1jul7AaXUW3kuZNkH+Sx3pSD6ZeYJ6RDIyAR3I/MUm3r4SMtlCUiypIcWgJmgZ5nV
x98kIwXjB48IbteB1Np8UfvSxpOr4oRVLY+2YzEFK7pjsCH9trRMhBNohGMyiYY+EOpZ7sVI1JDP
C2oSu9a2qNnSHIZv0GSZr+kTefz65cBgIZrmUlOtxA3jJEuddvSROQq4C8c37pnpTGW7ZtPfxGLV
DtJXAbgUPzGejkgJJDzJGhCeeOZRHPu9L25V2sBkcg+x9DREAJjjlAqdPE3RLFnUAXCRKcd+TSIX
5vqRyDmJxHTnnJYLTAfG47RFYxe53fwS9VTjGRgOXMJ2kbbOZAc/ooVv+fNoRAowmESc95pC/nML
NHnTn79FRXgDvp8nyGZ5/n+vO7TN4UVv+aJaC04XYvz2401KJrCEhWs2ghWFpPfrtBUlQ0AHXwLo
3MzyqADiWtsJNBKhPPerOlz0Dbe3EIQiotifGYpeqgUTBmcy+1MkdhaRYPmR35Zslc16xDSbaBv/
TecE+1jne4Pko8L5Hm0KG53bVTne3T8j/10bulOFEYlSa6VV/ASfXBdc6WBEHe4mtAYWmhj+XpZ5
bAsSuk7NwhIdCKjoe80iTebkCpAYqS1ASGVvtTa2BaSf/DB3e629a2LOKPV+SyanSFaUpoazKU0Z
9l/LU5Cv3nEPhMT01oiTN4iJvkHI5YazYwCtyyOsgbMFMwe3AoJkQjkUF92HPw1ULDWuPMlYa8sc
SHrn6Jsu9WhpSwmh5xF85PtlbKCflRQhSOYqNJuQYOxSIO7B7rhIWp4dZpvdrpAyKEkLUN0EM8c4
fj/dGuzfGVjG4K+KYBH56JlTfjcf
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
