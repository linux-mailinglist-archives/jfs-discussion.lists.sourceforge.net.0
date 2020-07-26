Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4003E22E23C
	for <lists+jfs-discussion@lfdr.de>; Sun, 26 Jul 2020 21:18:45 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1jzmA6-0002E9-IA; Sun, 26 Jul 2020 19:18:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jernej's-sflist@eternallybored.org>)
 id 1jzmA4-0002E1-Q4
 for jfs-discussion@lists.sourceforge.net; Sun, 26 Jul 2020 19:18:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Subject:To:Message-ID:From:Date:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YyLXmtfY/FfR3srGieddH3z685TFUkuCLEfybW5rXVs=; b=ae7HLSkS9VnwrNrtIc79Q0UYPl
 JzHVLf9dTtwSWgWqZrGPlvN1vNcf+tUdXS960G06WlSraxj3Xi6SAiKL/lVli19Cbtuswlpz7EMuZ
 ItLgihsH73PV34UWaSh1Yjp0muc1y21xtfc/DOWdZhnNh9HN2s08DMhhIxMBCcGRkYfU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Subject:To:Message-ID:From:Date:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=YyLXmtfY/FfR3srGieddH3z685TFUkuCLEfybW5rXVs=; b=YUHDNUXHtkhVEclPve+G8VZHgk
 f1SETiiH+jU9tZQMCLBhQbwzFpA5PwaF3aAIPVs2VsmmdY3ZrTskYcqBldlOI0fn/+D45Wp4oP4Ga
 y8URHc1z+HYw0qNTuBJ2HBwuaucd3367eG2lfcC2kf/1//djhlpdnWSJA1TKMwNY1hPU=;
Received: from m0.konto.si ([93.103.81.110])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jzmA0-009wif-7H
 for jfs-discussion@lists.sourceforge.net; Sun, 26 Jul 2020 19:18:16 +0000
Received: from localhost (postar.konto.si [127.0.0.1])
 by m0.konto.si (Postfix) with ESMTP id 22BC5F20A902
 for <jfs-discussion@lists.sourceforge.net>;
 Sun, 26 Jul 2020 21:17:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=
 eternallybored.org; h=content-transfer-encoding:content-type
 :content-type:mime-version:references:in-reply-to:subject
 :subject:message-id:organization:x-mailer:from:from:date:date
 :received:received; s=k1; t=1595791073; x=1597605474; bh=3M+eB0k
 QDMGAMVESx+lFMJKtv7KYOkmHO4cWqGE3uX0=; b=G99WdcvJDHN6uL/3biyK0Qn
 hID4hkXutBgvt5ZAonBgUr/LLboWL0fkGLYJ6w8p7K5baRfUWWaZKdmou7a42mDK
 dPTpXPlmzrXtxEJEX0fp7l8Y4ks1K3IbONRQWoGb2TwnOnBogLX2duwVDmIdYQUh
 Z3G+fm5umIP59K1pVGffUpxtcdyCZrwTmTrLkJwjLu7R4o6mshOfqp416Fnd+q3/
 i3VA9eY1rVjgvwKwjiItzXAAcRGi8GWkg3pbDS1jydfWD0AmsjX+yUmKD7kxSOeo
 UvA3jgqFQlbxhl9+jzPM6qdDSyFNDdxC4RLn1jys3FY1Ub6XpqhYUcY+DxWFmRA=
 =
X-Virus-Scanned: amavisd-new (outgoing)
Received: from m0.konto.si ([127.0.0.1])
 by localhost (postar.konto.si [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id 6Io8BxH6mRqL for <jfs-discussion@lists.sourceforge.net>;
 Sun, 26 Jul 2020 21:17:53 +0200 (CEST)
Received: from HACTAR.yggdrasil.local (unknown
 [IPv6:2a01:260:4094:1:9565:7211:234f:f848])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by m0.konto.si (Postfix) with ESMTPSA id 8EE09F26A700
 for <jfs-discussion@lists.sourceforge.net>;
 Sun, 26 Jul 2020 21:17:52 +0200 (CEST)
Date: Sun, 26 Jul 2020 21:17:52 +0200
From: =?utf-8?Q?Jernej_Simon=C4=8Di=C4=8D?=
 <jernej's-sflist@eternallybored.org>
X-Mailer: The Bat! (v9.2.2.1 (BETA)) Professional
Organization: E-mailaholics International
Message-ID: <431784596.20200726211752@eternallybored.org>
To: =?utf-8?Q?Jernej_Simon=C4=8Dic=CC=8C_on_[jfs-discussion]?=
 <jfs-discussion@lists.sourceforge.net>
In-Reply-To: <833415339.20200726144354@eternallybored.org>
References: <833415339.20200726144354@eternallybored.org>
X-Face: *BXrgB!?f3c"BwmeN:<Q~Z[5F-qZK~t;
 k]KluGog=8Wl6qa@Rhn=(<OL//@Zo*+3C1opTjt
 7l,QM>=h6[k:#^'6]0MuPu-@By.:}Io=wJ\]<V4L,<C`FM}a7R2oNq@Q8jY8`s)2^~@4o:FM>}W1N>
 n:~ixb-b:#nOD2|Eut%&
MIME-Version: 1.0
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.8 APOSTROPHE_FROM        From address contains an apostrophe
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: eternallybored.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.3 NICE_REPLY_A           Looks like a legit reply (A)
 0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jzmA0-009wif-7H
Subject: Re: [Jfs-discussion] fsck.jfs segfaults
X-BeenThere: jfs-discussion@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <jfs-discussion.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/jfs-discussion>, 
 <mailto:jfs-discussion-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=jfs-discussion>
List-Post: <mailto:jfs-discussion@lists.sourceforge.net>
List-Help: <mailto:jfs-discussion-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/jfs-discussion>, 
 <mailto:jfs-discussion-request@lists.sourceforge.net?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

T24gU3VuZGF5LCBKdWx5IDI2LCAyMDIwLCAxNDo0Mzo1NCwgSmVybmVqIFNpbW9uxI1pY8yMIHdy
b3RlOgoKPiBBZnRlciBJIHJlYm9vdGVkIG15IHNlcnZlciwgb25lIG9mIHRoZSB2b2x1bWVzIGZh
aWxlZCB0byBtb3VudCwgYW5kCj4gd2hlbiBJIHJ1biBmc2NrLmpmcyBvbiBpdCwgaXQgc2VnZmF1
bHRzOgoKSGVyZSdzIHRoZSBiYWNrdHJhY2UgZnJvbSBqZnNfZnNjazoKClJlYWRpbmcgc3ltYm9s
cyBmcm9tIGpmc3V0aWxzLTEuMS4xNS9mc2NrL2pmc19mc2NrLi4uCltOZXcgTFdQIDMwNl0KQ29y
ZSB3YXMgZ2VuZXJhdGVkIGJ5IGBqZnN1dGlscy0xLjEuMTUvZnNjay9qZnNfZnNjayAtdiAvZGV2
L2xvb3AxMicuClByb2dyYW0gdGVybWluYXRlZCB3aXRoIHNpZ25hbCBTSUdTRUdWLCBTZWdtZW50
YXRpb24gZmF1bHQuCiMwICAweDAwMDA3ZWZjZTE1YzM4MTQgaW4gPz8gKCkgZnJvbSAvbGliNjQv
bGliYy5zby42CihnZGIpIGJ0IGYKIzAgIDB4MDAwMDdlZmNlMTVjMzgxNCBpbiA/PyAoKSBmcm9t
IC9saWI2NC9saWJjLnNvLjYKTm8gc3ltYm9sIHRhYmxlIGluZm8gYXZhaWxhYmxlLgojMSAgMHgw
MDAwNTY0N2JiNTkzZDc3IGluIHdyaXRlQm1hcCAodm9sPTAsIGJtYXA9MHg3ZWZjZTA4YmMwMDAs
IGRpcD0weDU2NDdiYjZlNzBhMCA8YnVmZmVyKzUxNzEyMD4pIGF0IGxvZ19tYXAuYzoxMzk3CiAg
ICAgICAgcmMgPSAwCiAgICAgICAgaSA9IDEyNgogICAgICAgIGogPSAzCiAgICAgICAgayA9IDAK
ICAgICAgICBuID0gODE5MgogICAgICAgIGZzc2l6ZSA9IDQzOTQzODc0MzgKICAgICAgICBoX2Zz
c2l6ZSA9IDQzOTQzOTU2MzAKICAgICAgICBuYmxvY2tzID0gNDM2ODE4OTQyMgogICAgICAgIG5w
YWdlcyA9IDUzNjk1MwogICAgICAgIHAgPSAweDdlZmNlMDhiZjAwMCAiIgogICAgICAgIGwycHRy
ID0gMHg3ZWZjZTA4YmQwMDAKICAgICAgICBsMXB0ciA9IDB4N2VmY2UwOGJlMDAwCiAgICAgICAg
bDBwdHIgPSAweDdlZmNlMDhiZjAwMAogICAgICAgIGRtYXAgPSAweDdlZmNlMDhjMDAwMAogICAg
ICAgIGwwbGVhZiA9IDB4N2VmY2UwOGJmMWU0ICdcMzc3JyA8cmVwZWF0cyA2OSB0aW1lcz4KICAg
ICAgICBsMWxlYWYgPSAweDdlZmNlMDhiZTE2OSAiXDAyMFx2XGZcMDIxXGZcblwwMjJcMDIxXDAx
NlwwMjJcMDIzXDAwM1x2XDAyMFxmXDAwMVwwMDRcMzc3XGFcMDI1XDAxN1xiXHRcMDAxXDM3N1wz
NzdcZlwwMjBcMDE2XDM3N1wzNzdcYlwzNzdcMzc3XDAyMVwwMjNcZlxmXHZcYlx0XHRcMDIzXDAy
MlwwMjRcMzc3XDM3N1wzNzdcMzc3XDM3N1xiXDAyMlwzNzdcMzc3IgogICAgICAgIGwybGVhZiA9
IDB4N2VmY2UwOGJkMTY2ICJ6IFwyMzRcMzE3XDM3M1wzNjNcMzMwIVwzNTdcMzQ036RcMjQyYFww
MjdZeiBcMjM0XDMxN1wzNzNcMzYzXDMzMCFcMzU3XDM0NN+kXDI0MmBcMDI3WXogXDIzNFwzMTdc
MzczXDM2M1wzMzAhXDM1N1wzNDTfpFwyNDJgXDAyN1l6IFwyMzRcMzE3XDM3M1wzNjNcMzMwIVwz
NTdcMzQ036RcMjQyYFwwMjdZeiBcMjM0XDMxN1wzNzNcMzYzXDMzMCFcMzU3XDM0NN+kXDI0MmBc
MDI3WXogXDIzNFwzMTdcMzczXDM2M1wzMzAhXDM1N1wzNDTfpFwyNDJgXDAyN1l6IFwyMzRcMzE3
XDM3M1wzNjNcMzMwIVwzNTdcMzQ036RcMjQyYFwwMjdZeiBcMjM0XDMxN1wzNzNcMzYzXDMzMCFc
MzU3XDM0NN+kXDI0MmBcMDI3WXogXDIzNFwzMTdcMzczXDM2M1wzMzAhXDM1N1wzNDTfpFwyNDJg
XDAyN1l6IFwyMzRcMzE3XDM3M1wzNjNcMzMwIVwzNTdcMzQ0XDA2M2NcMzY2XDAyNlwyNjZcMzcz
SlBcMjc0XDAzMEBcMzM3XDM0MWh4XDAwMlwzNzRcMzM2XDAwMVwyMzXUhlwzMTdsXDIxNFwyNjJc
MjA3XDM3NXNcMjQxaVwzMTNcMzc0XDMzNlwwMDFcMjM11IZcMzE3bFwyMTRcMjYyXDIwN1wzNzVz
XDI0MSIuLi4KICAgICAgICBhZ25vID0gMAogICAgICAgIGwyYWdzaXplID0gMjYKICAgICAgICBh
Y3RhZ3MgPSAzNTM4OTQ0CiAgICAgICAgaW5hY3RhZ3MgPSA0MTI5CiAgICAgICAgbDJubCA9IDQx
MzAKICAgICAgICBhZ19yZW0gPSAxMzk2MjA3OTY4NTg0OTQKICAgICAgICBhY3RmcmVlID0gMTEK
ICAgICAgICBpbmFjdGZyZWUgPSAxMzk2MjQ1NjM5ODIzMzYKICAgICAgICBhdmdmcmVlID0gMTM5
NjI0NTYzOTg2NDMyCiAgICAgICAgbmV4dF9ibWFwX3BhZ2UgPSAzMjA1CiAgICAgICAgZG1hcF9i
aXRyZWMgPSAweDMzNDRiZDM4CiAgICAgICAgYml0bWFwbGVuID0gMTAyNAogICAgICAgIF9fUFJF
VFRZX0ZVTkNUSU9OX18gPSAid3JpdGVCbWFwIgojMiAgMHgwMDAwNTY0N2JiNTkyYzA5IGluIHVw
ZGF0ZU1hcHMgKHZvbD0wKSBhdCBsb2dfbWFwLmM6OTYyCiAgICAgICAgcmMgPSAwCiAgICAgICAg
ZGlwID0gMHg1NjQ3YmI2ZTcwYTAgPGJ1ZmZlcis1MTcxMjA+CiAgICAgICAgcHhkMSA9IHtsZW4g
PSAxLCBhZGRyMSA9IDAsIGFkZHIyID0gMTF9CiMzICAweDAwMDA1NjQ3YmI1OGEwOTEgaW4gamZz
X2xvZ3JlZG8gKHBhdGhuYW1lPTB4N2ZmZjVhNWE5YWIzICIvZGV2L2xvb3AxMiIsIGZwPTB4NTY0
N2JiYWI2NmYwLCB1c2VfMm5kX2FnZ1N1cGVyPTApIGF0IGxvZ3JlZG8uYzo3ODcKICAgICAgICBy
YyA9IDAKICAgICAgICBrID0gMAogICAgICAgIGxvZ2FkZHIgPSAyNzc5NjQ2NAogICAgICAgIG5l
eHRhZGRyID0gMjc3OTY0MjgKICAgICAgICBsYXN0YWRkciA9IDI3Nzk2NDY0CiAgICAgICAgbmxv
Z3JlY29yZHMgPSAxCiAgICAgICAgc3luY3JlY29yZCA9IDI3Nzk2NDY0CiAgICAgICAgbGQgPSB7
bG9ndGlkID0gMCwgYmFja2NoYWluID0gMCwgdHlwZSA9IDE2Mzg0LCBsZW5ndGggPSAwLCBhZ2dy
ZWdhdGUgPSAwLCBsb2cgPSB7cmVkb3BhZ2UgPSB7ZmlsZXNldCA9IDAsIGlub2RlID0gMjE2OTIz
NjgxMywgdHlwZSA9IDY1NTM1LCBsMmxpbmVzaXplID0gLTEsIHB4ZCA9IHtsZW4gPSAxMDg2NjM2
LCBhZGRyMSA9IDEyOSwKICAgICAgICAgICAgICAgIGFkZHIyID0gNDI5NDk2NzI5NX19LCBub3Jl
ZG9wYWdlID0ge2ZpbGVzZXQgPSAwLCBpbm9kZSA9IDIxNjkyMzY4MTMsIHR5cGUgPSA2NTUzNSwg
cnNydmQgPSAtMSwgcHhkID0ge2xlbiA9IDEwODY2MzYsIGFkZHIxID0gMTI5LCBhZGRyMiA9IDQy
OTQ5NjcyOTV9fSwgdXBkYXRlbWFwID0ge2ZpbGVzZXQgPSAwLAogICAgICAgICAgICAgIGlub2Rl
ID0gMjE2OTIzNjgxMywgdHlwZSA9IDY1NTM1LCBueGQgPSAtMSwgcHhkID0ge2xlbiA9IDEwODY2
MzYsIGFkZHIxID0gMTI5LCBhZGRyMiA9IDQyOTQ5NjcyOTV9fSwgbm9yZWRvaW5vZXh0ID0ge2Zp
bGVzZXQgPSAwLCBpYWdudW0gPSAtMjEyNTczMDQ4MywgaW5vZXh0X2lkeCA9IC0xLCBweGQgPSB7
bGVuID0gMTA4NjYzNiwKICAgICAgICAgICAgICAgIGFkZHIxID0gMTI5LCBhZGRyMiA9IDQyOTQ5
NjcyOTV9fSwgc3luY3B0ID0ge3N5bmMgPSAwfSwgZnJlZXh0ZW50ID0ge3R5cGUgPSAwLCBuZXh0
ZW50ID0gLTIxMjU3MzA0ODN9LCBub3JlZG9maWxlID0ge2ZpbGVzZXQgPSAwLCBpbm9kZSA9IDIx
NjkyMzY4MTN9LCBuZXdwYWdlID0ge2ZpbGVzZXQgPSAwLAogICAgICAgICAgICAgIGlub2RlID0g
MjE2OTIzNjgxMywgdHlwZSA9IC0xLCBweGQgPSB7bGVuID0gMTA4NjYzNiwgYWRkcjEgPSAxMjks
IGFkZHIyID0gNDI5NDk2NzI5NX19fX0KICAgICAgICBsb3dlc3RfbHJfYnl0ZSA9IDgyMDAKICAg
ICAgICBoaWdoZXN0X2xyX2J5dGUgPSAzMzU1NDM5NgogICAgICAgIGxvZ19oYXNfd3JhcHBlZCA9
IDAKICAgICAgICBsb2dlbmQgPSAyNzc5NjQ2NAogICAgICAgIGluX3VzZSA9IDAKIzQgIDB4MDAw
MDU2NDdiYjU4NTBjNCBpbiBwaGFzZTBfcHJvY2Vzc2luZyAoKSBhdCB4Y2hrZHNrLmM6MTg4OAog
ICAgICAgIHAwX3JjID0gMAogICAgICAgIGFnZ19ibGtzID0gNDM5NDUyOTc5MgogICAgICAgIHVz
ZV8ybmRhcnlfc3VwZXJibG9jayA9IDAKIzUgIDB4MDAwMDU2NDdiYjU4MjBmYiBpbiBtYWluIChh
cmdjPTMsIGFyZ3Y9MHg3ZmZmNWE1YTk2YTgpIGF0IHhjaGtkc2suYzozMzMKICAgICAgICByYyA9
IDAKICAgICAgICBDdXJyZW50X1RpbWUgPSAxNDA3MzQ3MDkyNzQyNzIKKGdkYikgZiAxCiMxICAw
eDAwMDA1NjQ3YmI1OTNkNzcgaW4gd3JpdGVCbWFwICh2b2w9MCwgYm1hcD0weDdlZmNlMDhiYzAw
MCwgZGlwPTB4NTY0N2JiNmU3MGEwIDxidWZmZXIrNTE3MTIwPikgYXQgbG9nX21hcC5jOjEzOTcK
MTM5NyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgbWVtY3B5KCh2
b2lkICopICYoZG1hcC0+cG1hcCksCihnZGIpIHByaW50IGRtYXAKJDEgPSAoc3RydWN0IGRtYXAg
KikgMHg3ZWZjZTA4YzAwMDAKKGdkYikgcHJpbnQgKmRtYXAKJDIgPSB7bmJsb2NrcyA9IDgxOTIs
IG5mcmVlID0gMCwgc3RhcnQgPSAyNjE5ODAxNiwgdHJlZSA9IHtubGVhZnMgPSAyNTYsIGwybmxl
YWZzID0gOCwgbGVhZmlkeCA9IDg1LCBoZWlnaHQgPSA0LCBidWRtaW4gPSA1ICdcMDA1Jywgc3Ry
ZWUgPSAnXDM3NycgPHJlcGVhdHMgMzQxIHRpbWVzPiwgcGFkID0gIlwwMDAifSwKICBwYWQgPSAn
XDAwMCcgPHJlcGVhdHMgMTY3MSB0aW1lcz4sIHdtYXAgPSB7NDI5NDk2NzI5NSA8cmVwZWF0cyAy
NTYgdGltZXM+fSwgcG1hcCA9IHs0Mjk0OTY3Mjk1IDxyZXBlYXRzIDI1NiB0aW1lcz59fQooZ2Ri
KSBwcmludCBkbWFwX2JpdHJlYwokMyA9IChzdHJ1Y3QgZG1hcF9iaXRtYXBzICopIDB4MzM0NGJk
MzgKKGdkYikgcHJpbnQgKmRtYXBfYml0cmVjCkNhbm5vdCBhY2Nlc3MgbWVtb3J5IGF0IGFkZHJl
c3MgMHgzMzQ0YmQzOAoKCgotLSAKPCBKZXJuZWogU2ltb27EjWnEjSA+PD48Pjw+PD48IGh0dHBz
Oi8vZXRlcm5hbGx5Ym9yZWQub3JnLyA+CgpBbGwgdGhpbmdzIGNvbnNpZGVyZWQsIGxpZmUgaXMg
OS10by01IGFnYWluc3QuCiAgICAgICAtLSBOaWNrIHRoZSBHcmVlaydzIExhdwoKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpKZnMtZGlzY3Vzc2lvbiBt
YWlsaW5nIGxpc3QKSmZzLWRpc2N1c3Npb25AbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8v
bGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL2pmcy1kaXNjdXNzaW9uCg==
