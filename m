Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D125697E4FF
	for <lists+jfs-discussion@lfdr.de>; Mon, 23 Sep 2024 05:36:15 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ssZrj-0001LY-6r;
	Mon, 23 Sep 2024 03:35:59 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ghanshyam1898@gmail.com>) id 1ssZrf-0001LP-PN
 for jfs-discussion@lists.sourceforge.net;
 Mon, 23 Sep 2024 03:35:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=//Q7GU5IrneEyxviJntAp1AonKejz1y+X80/DuCcShU=; b=TlXjcgprhCZyowA+jsmpX0IZlN
 cGA1VZAjJRCMtv4KMSp1FteLetQVL4OPNZb8PIfrxSus6fDOdTES6JX3kWGM0ydkBvjKyTR5OR/qn
 JkzCpP4+PyKRFFxlRVNj+1ISTci7/FecLoSUfo8nyg3ed9lCh1KExkEHckABmVybkVe8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=//Q7GU5IrneEyxviJntAp1AonKejz1y+X80/DuCcShU=; b=XDAH/oC3KhKC1JRdfwYd7Inyyw
 poCcClL4rZ4XhZ0VhsmdNbIVJsbFru3dyiBPADMlI327rr3B5D2hDEJVAo9MWP0yBR7SK/lIdih5p
 kQ/tAwptLwFcv6soNumTjVr+xjOX4OUQfA8EttF8TaLD0LKo/Kc0ab+HSonTUk71GqAQ=;
Received: from mail-pl1-f176.google.com ([209.85.214.176])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ssZrf-0001kR-SM for jfs-discussion@lists.sourceforge.net;
 Mon, 23 Sep 2024 03:35:56 +0000
Received: by mail-pl1-f176.google.com with SMTP id
 d9443c01a7336-2053525bd90so34912945ad.0
 for <jfs-discussion@lists.sourceforge.net>;
 Sun, 22 Sep 2024 20:35:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1727062550; x=1727667350; darn=lists.sourceforge.net;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=//Q7GU5IrneEyxviJntAp1AonKejz1y+X80/DuCcShU=;
 b=T/KHy+rGZ+sbo2ONA62uMG/kdQs1gsfhJxjbvugLIL2NNIbiYsZ7s5fm/gmRLXfDdO
 NariBxTl7Myv0PtvNXNtIcQOE/GDK5WHi4wAArLLVcuiPJw8mI+5Wqd1n5CicyfmeC0Y
 OBriO8uAQDf2MqJ+xbDCoSYA+hBLrZfcE4XYQXW7CEEnkYrpNu9yi1Hnpo/K2LKcqs4c
 8QMnTSn+NRJ3NMTBmHpMVXr8NsL6/sdkdhff1YAQQws4k3h5Ldk2knlZRvQGHzIfvIrY
 BQEMKED365arMXy1hNbN9ogbarFfiBWzzEtfNmWIW+0X/3ZOnzrG1azmFL8ysNZNywgg
 ldJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1727062550; x=1727667350;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=//Q7GU5IrneEyxviJntAp1AonKejz1y+X80/DuCcShU=;
 b=DKTJQBFEIf1YZPxUJLIqgQeRdYDZBTZOc0n31vsRlHqScCG6tvJiluN7r6L4Zo4AAA
 tECqCuir01Kq24ZgP/P9Um56SDC+xSp1nq/voQMbGd2ZKJS6+j1GAXqhIexyPAlWgtwr
 hug68c1xbexpINCplSUGYVarLH0VGSK/m43X6CLv4CPZ8HDCulqWLGPJ0rCXimhSflI8
 2iMacuT1hQrMBwIB5qDzRWbwym5Prqy2PHv6BiaRc7do2Co3eVlYdSZNWwdsCbf2Ky9Z
 +zX75find6u5a454Xc6uVaO9RKyg0J9GqMvwl9JllXk2YwQjyg4Caav55YIqwpi6oYlS
 Xj5g==
X-Forwarded-Encrypted: i=1;
 AJvYcCW4OZobowk3hF8GFofHGMIGE7oaery83M3YYXGBwhRNo6NIFxthJ2RgoGcYU61gre+tH4iCBT7PAOSZbKDOqw==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YyRmSLHlzyGyRoOavfEzRIgj1B7q6l0hR3aFIclun0u/3gZd9Vd
 x2LdLReW73gZ0q6ciVQHdhfHpYKj4e5m6gEYDq+AIWY/E2v8smhiM/guGClzIRnik7eZBxYsnl+
 hP8t/Xvp67BgR/ZrqQcRqniaA/7I=
X-Google-Smtp-Source: AGHT+IHsrzIz6wtS9qlSuGP1L/mTxxc1W6yP/zwzDwWmRy48P/cYkG5TEbm5Fp/SKjzlOwRg/SSPzy/xv6nusr3fWD8=
X-Received: by 2002:a17:902:e5ca:b0:206:cbf0:3089 with SMTP id
 d9443c01a7336-208d8566916mr138808665ad.54.1727062550091; Sun, 22 Sep 2024
 20:35:50 -0700 (PDT)
MIME-Version: 1.0
References: <20240922110000.128650-1-ghanshyam1898@gmail.com>
 <c9f80af9-4cf0-4b6e-8c61-4b7a6f287cd9@wanadoo.fr>
In-Reply-To: <c9f80af9-4cf0-4b6e-8c61-4b7a6f287cd9@wanadoo.fr>
Date: Mon, 23 Sep 2024 09:05:13 +0530
Message-ID: <CAG-BmocfstJNC-JDgtx93EJmg5kMANu4tVRbjqYtZ1CE+AEnEg@mail.gmail.com>
To: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
X-Spam-Score: -0.8 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Sun, Sep 22, 2024 at 8:35 PM Christophe JAILLET wrote:
    > > Le 22/09/2024 à 13:00, Ghanshyam Agrawal a écrit : > > In some cases,
    dn_numag may be greater than MAXAG which may > > result in an [...] 
 
 Content analysis details:   (-0.8 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.214.176 listed in list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
                             in digit
                             [ghanshyam1898[at]gmail.com]
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [ghanshyam1898[at]gmail.com]
 -0.9 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.214.176 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
X-Headers-End: 1ssZrf-0001kR-SM
Subject: Re: [Jfs-discussion] [PATCH] jfs: fix array-index-out-of-bounds
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
From: Ghanshyam Agrawal via Jfs-discussion
 <jfs-discussion@lists.sourceforge.net>
Reply-To: Ghanshyam Agrawal <ghanshyam1898@gmail.com>
Cc: shaggy@kernel.org, brauner@kernel.org, ghandatmanas@gmail.com,
 eadavis@qq.com, jlayton@kernel.org, jfs-discussion@lists.sourceforge.net,
 linux-kernel@vger.kernel.org,
 syzbot+808f3f84407f08a93022@syzkaller.appspotmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

T24gU3VuLCBTZXAgMjIsIDIwMjQgYXQgODozNeKAr1BNIENocmlzdG9waGUgSkFJTExFVAo8Y2hy
aXN0b3BoZS5qYWlsbGV0QHdhbmFkb28uZnI+IHdyb3RlOgo+Cj4gTGUgMjIvMDkvMjAyNCDDoCAx
MzowMCwgR2hhbnNoeWFtIEFncmF3YWwgYSDDqWNyaXQgOgo+ID4gSW4gc29tZSBjYXNlcywgZG5f
bnVtYWcgbWF5IGJlIGdyZWF0ZXIgdGhhbiBNQVhBRyB3aGljaCBtYXkKPiA+IHJlc3VsdCBpbiBh
biBhcnJheS1pbmRleC1vdXQtb2YtYm91bmRzIGluIGRiTmV4dEFHLiBBZGRlZAo+ID4gYSBjaGVj
ayB0byByZXR1cm4gYW4gZXJyb3IgY29kZSBiZWZvcmUgd2UgY3Jhc2guCj4gPgo+ID4gUmVwb3J0
ZWQtYnk6IHN5emJvdCs4MDhmM2Y4NDQwN2YwOGE5MzAyMkBzeXprYWxsZXIuYXBwc3BvdG1haWwu
Y29tCj4gPiBDbG9zZXM6IGh0dHBzOi8vc3l6a2FsbGVyLmFwcHNwb3QuY29tL2J1Zz9leHRpZD04
MDhmM2Y4NDQwN2YwOGE5MzAyMgo+ID4gU2lnbmVkLW9mZi1ieTogR2hhbnNoeWFtIEFncmF3YWwg
PGdoYW5zaHlhbTE4OThAZ21haWwuY29tPgo+ID4gLS0tCj4gPiAgIGZzL2pmcy9qZnNfaW1hcC5j
IHwgMyArKysKPiA+ICAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKQo+ID4KPiA+IGRp
ZmYgLS1naXQgYS9mcy9qZnMvamZzX2ltYXAuYyBiL2ZzL2pmcy9qZnNfaW1hcC5jCj4gPiBpbmRl
eCAyZWMzNTg4OWFkMjQuLjUwODhkYTEzZThmMSAxMDA2NDQKPiA+IC0tLSBhL2ZzL2pmcy9qZnNf
aW1hcC5jCj4gPiArKysgYi9mcy9qZnMvamZzX2ltYXAuYwo+ID4gQEAgLTEzNjAsNiArMTM2MCw5
IEBAIGludCBkaUFsbG9jKHN0cnVjdCBpbm9kZSAqcGlwLCBib29sIGRpciwgc3RydWN0IGlub2Rl
ICppcCkKPiA+ICAgICAgIGlmIChhZ25vIDwgMCB8fCBhZ25vID4gZG5fbnVtYWcpCj4gPiAgICAg
ICAgICAgICAgIHJldHVybiAtRUlPOwo+ID4KPiA+ICsgICAgIGlmICh1bmxpa2VseShkbl9udW1h
ZyA+IE1BWEFHKSkKPgo+IEhpLAo+Cj4gbG9va2luZyBhdCBvdGhlciBwbGFjZXMgd2l0aCBjaGVj
a3Mgd2l0aCBNQVhBRywgSSB3b25kZXIgaWYgaXQgc2hvdWxkIGJlID49Pwo+Cj4gQ0oKPgo+ID4g
KyAgICAgICAgICAgICByZXR1cm4gLUVJTzsKPiA+ICsKPiA+ICAgICAgIGlmIChhdG9taWNfcmVh
ZCgmSkZTX1NCSShwaXAtPmlfc2IpLT5ibWFwLT5kYl9hY3RpdmVbYWdub10pKSB7Cj4gPiAgICAg
ICAgICAgICAgIC8qCj4gPiAgICAgICAgICAgICAgICAqIFRoZXJlIGlzIGFuIG9wZW4gZmlsZSBh
Y3RpdmVseSBncm93aW5nLiAgV2Ugd2FudCB0bwo+CgpIZWxsbyBDaHJpc3RvcGhlLAoKVGhhbmtz
IGZvciByZXZpZXdpbmcgbXkgY29kZS4gSSBiZWxpZXZlIHRoZSBncmVhdGVyIHRoYW4gc3ltYm9s
IEkgaGF2ZQpzZXQgaXMgY29ycmVjdCBpbiB0aGlzIGNhc2UuIENhbiB5b3UgcGxlYXNlIGNoZWNr
IGl0IHRob3JvdWdobHkgYW5kIGxldAptZSBrbm93IHdueSBpdCBzaG91bGQgYmUgPj0gPwoKVGhh
bmtzICYgUmVnYXJkcywKR2hhbnNoeWFtIEFncmF3YWwKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpKZnMtZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKSmZz
LWRpc2N1c3Npb25AbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9y
Z2UubmV0L2xpc3RzL2xpc3RpbmZvL2pmcy1kaXNjdXNzaW9uCg==
