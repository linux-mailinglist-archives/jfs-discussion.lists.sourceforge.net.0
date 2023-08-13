Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EA9A177A4D1
	for <lists+jfs-discussion@lfdr.de>; Sun, 13 Aug 2023 05:12:20 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qV1WH-0005eH-FL;
	Sun, 13 Aug 2023 03:11:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <smfrench@gmail.com>) id 1qV1WF-0005e7-EG
 for jfs-discussion@lists.sourceforge.net;
 Sun, 13 Aug 2023 03:11:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zvzp1gQ+6XfFk/eBBQ2JFjiH09Yw2NiXqDxjmFGA8Fs=; b=gIf5lrV6HxndlgGu7WSe4Dlhct
 yIS1MEB1cg02Y6UDpxPD2WVitrkdVULas/vwNtVUsOJpKBkwfXwBMejwxhC5bN6T0VFGT0D95rn4y
 dvscJtNLHWG3bKEFqAzT/7q2G4aNLBjD1YXhhaPZFovxmmOK89CSHwwSZTe3abQdR+rg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=zvzp1gQ+6XfFk/eBBQ2JFjiH09Yw2NiXqDxjmFGA8Fs=; b=iqDi6+hY5LCYXXglCIsFKug3oX
 ZHVRGRk7JM1F67z4GJRePcpuxDjr9Wufq8MbQK2jxRvcOJowF6qR6ElMoWPhQ1YkVc5Zl9lzTskQs
 VLZC2/6sOenYuPvczVNCtAbV4j4YtrzBh8IAnUQzwwbD2eeAl4iSDUzKFVx1nN3EPt7w=;
Received: from mail-lj1-f174.google.com ([209.85.208.174])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qV1WC-0001Pz-K8 for jfs-discussion@lists.sourceforge.net;
 Sun, 13 Aug 2023 03:11:54 +0000
Received: by mail-lj1-f174.google.com with SMTP id
 38308e7fff4ca-2b9e6cc93d8so50654051fa.0
 for <jfs-discussion@lists.sourceforge.net>;
 Sat, 12 Aug 2023 20:11:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1691896306; x=1692501106;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=zvzp1gQ+6XfFk/eBBQ2JFjiH09Yw2NiXqDxjmFGA8Fs=;
 b=ZAU8L+/3l6c5EOmAcZGSylH5KIYGymKiNm7cE+muL71RUAUKTBVcbA5L6U1mzR0WhW
 XCiaWnqPlmZ5wGIcrvKYNK5+uXUpMtUd9OMCL2zjeXclsGt4szAiLGfgF1BNycXjRIwq
 aeVx/jkiM8mnF+62JoXBi7c+GXuV7FJ7TDwaaTe4p88WVEfdWZi4HGTPOiUFaIBSi2Dc
 DzKgvb38d7aO4Epe09kLqo+1o+UcqC7qOGrG6biQ1otzwPxE4NtkafHQ3OI2gbtPTcDg
 t6KaJY7JMUWNi7BEkftPiCNQeCVj8fqNKlcLn03VCd9HkStAUhphS+mmcXWjfHXqD6jh
 +yDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1691896306; x=1692501106;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=zvzp1gQ+6XfFk/eBBQ2JFjiH09Yw2NiXqDxjmFGA8Fs=;
 b=Fr+ir9+O9bVKGrdziwnv/AXQrAMPTBCiStbJdAkwqVmIAeEs+DNBdFZQD3H6dp+PTh
 tpl/XK7ewEaokP/hM0q7PvOyPqad0bJ+0Rr+0ZuUXQKQGSqX+K91YsSMzGsf6ua1oARw
 Xn9CgEbZYdJYEJeb1Z/KtmHwQ/YhQ6e6pZPkuTpL3im35MI0yf4dzEFP94049ojjr3bf
 3HeC5DZUE2butRr+2HjQ7fjvMP2U9v762ESVXDMj+zpOYG+eEyS9cCGbr0Vg/qpI/RSE
 UU+WdyTf25xhBKdicIuhhKVq7am0f/w3H0W2dd/gO9BLqfIIH+HgWk2tPICNgH7Qz14I
 aRjw==
X-Gm-Message-State: AOJu0YxwghADOgcczWEJOeVnfVPc7BTATLJiGGNdUkoSMJ6YeXdGL+S+
 a+/nvO0DT4RS1oeDOhwL0SNz5YC7oAzP5MZL/5c=
X-Google-Smtp-Source: AGHT+IFkSnAm0x250e+D/C0jcEvZDPRPt61ghBsO0eg6LDYjULpEWYzx6hQqLTCCrNkRtj8RJxGYJborIl4l4MzCsCE=
X-Received: by 2002:a05:6512:1154:b0:4f8:5635:2cd8 with SMTP id
 m20-20020a056512115400b004f856352cd8mr4747504lfg.32.1691896305579; Sat, 12
 Aug 2023 20:11:45 -0700 (PDT)
MIME-Version: 1.0
References: <CAH2r5mvrhr52hXFv87O9O=Qw45AXRXr0NQAsTk4Wj-6s19-2bA@mail.gmail.com>
 <CAH2r5mss4RsEF1b6gJo8LFWsN9-YBSEP6GV7axsNhX7ihj5CqA@mail.gmail.com>
 <ZLhchajZaWEVM6D7@gallifrey> <79bbb44c-f3b1-5c5c-1ad4-bcaab0069666@oracle.com>
 <d1f7fbe9-8fe2-e3e3-d6ff-1544204202ff@talpey.com> <ZLnJzUynpTBvZGtA@gallifrey>
 <f8f4a2c5-05d3-0b2d-688f-b3274a98fc73@talpey.com> <ZLrxYzGXJzsLmGDs@gallifrey>
 <16f50dff126af9b20f9b99ca056ad5fa.pc@manguebit.com>
 <ZLr0wFMKhEaannov@gallifrey> <ZNgqZRZNgN8JdiL4@gallifrey>
In-Reply-To: <ZNgqZRZNgN8JdiL4@gallifrey>
Date: Sat, 12 Aug 2023 22:11:31 -0500
Message-ID: <CAH2r5muAQ=gqCKk5qv9SX2Q-YR-2gvFsubTk6sd9p17XS43Acw@mail.gmail.com>
To: "Dr. David Alan Gilbert" <dave@treblig.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  thx - should be doable to put in for-next soon unless we find
    objections On Sat, Aug 12, 2023 at 7:57 PM Dr. David Alan Gilbert wrote:
    > > * Dr. David Alan Gilbert (dave@treblig.org) wrote: > > * Paulo Alcantara
    (pc@manguebit.com) wrote: > > > "Dr. David Alan Gilbert" [...] 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.208.174 listed in list.dnswl.org]
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [smfrench[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.208.174 listed in wl.mailspike.net]
X-Headers-End: 1qV1WC-0001Pz-K8
Subject: Re: [Jfs-discussion] [PATCH v2 0/4] dedupe smb unicode files
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
From: Steve French via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Steve French <smfrench@gmail.com>
Cc: Paulo Alcantara <pc@manguebit.com>, linux-cifs@vger.kernel.org,
 jfs-discussion@lists.sourceforge.net, shaggy@kernel.org,
 linux-kernel@vger.kernel.org, Tom Talpey <tom@talpey.com>,
 krisman@collabora.com, linkinjeon@kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

dGh4IC0gc2hvdWxkIGJlIGRvYWJsZSB0byBwdXQgaW4gZm9yLW5leHQgc29vbiB1bmxlc3Mgd2Ug
ZmluZCBvYmplY3Rpb25zCgpPbiBTYXQsIEF1ZyAxMiwgMjAyMyBhdCA3OjU34oCvUE0gRHIuIERh
dmlkIEFsYW4gR2lsYmVydCA8ZGF2ZUB0cmVibGlnLm9yZz4gd3JvdGU6Cj4KPiAqIERyLiBEYXZp
ZCBBbGFuIEdpbGJlcnQgKGRhdmVAdHJlYmxpZy5vcmcpIHdyb3RlOgo+ID4gKiBQYXVsbyBBbGNh
bnRhcmEgKHBjQG1hbmd1ZWJpdC5jb20pIHdyb3RlOgo+ID4gPiAiRHIuIERhdmlkIEFsYW4gR2ls
YmVydCIgPGxpbnV4QHRyZWJsaWcub3JnPiB3cml0ZXM6Cj4gPiA+Cj4gPiA+ID4gaHR0cHM6Ly9n
aXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvdG9ydmFsZHMvbGludXguZ2l0
L3RyZWUvc2NyaXB0cy9jaGVja3BhdGNoLnBsI24zNzM3Cj4gPiA+ID4gICBpZiAoJHJlYWxmaWxl
ID1+IC9cLihofHN8UykkLykgewo+ID4gPiA+ICAgICAgICAgICAkY29tbWVudCA9ICcvKic7Cj4g
PiA+ID4gICB9IGVsc2lmICgkcmVhbGZpbGUgPX4gL1wuKGN8cnN8ZHRzfGR0c2kpJC8pIHsKPiA+
ID4gPiAgICAgICAgICAgJGNvbW1lbnQgPSAnLy8nOwo+ID4gPiA+Cj4gPiA+ID4gSSBkb24ndCBn
ZXQgd2hlcmUgdGhhdCBpZGVhIGNhbWUgZnJvbS4KPiA+ID4KPiA+ID4gQ2hlY2sgRG9jdW1lbnRh
dGlvbi9wcm9jZXNzL2xpY2Vuc2UtcnVsZXMucnN0Lgo+ID4KPiA+IE9oLCB0aGF0J3MgYSBwYWlu
ZnVsIGhpc3RvcnkhCj4gPiBIbW0gdGhhdCBsYW5kZWQganVzdCBhZnRlciBJIHBvc3RlZCBhIHYz
IChvZiBqdXN0IHRoaXMgcGF0Y2gpCj4gPgo+ID4gU3RldmU6IFlvdXIgY2FsbCwgZG8geW91IHdh
bnQgbWUgdG8gcG9zdCBhIHY0IHdpdGggdGhhdCBjb21tZW50Cj4gPiBiYWNrIGFuZCBidXQgd2l0
aCB0aGUgY29weXJpZ2h0IGxpbmVhcyBhcyBpbiB2Mz8KPgo+IEkndmUgcG9zdGVkIHRoZSB2NC4K
Pgo+IERhdmUKPgo+ID4gRGF2ZQo+ID4KPiA+IC0tCj4gPiAgLS0tLS1PcGVuIHVwIHlvdXIgZXll
cywgb3BlbiB1cCB5b3VyIG1pbmQsIG9wZW4gdXAgeW91ciBjb2RlIC0tLS0tLS0KPiA+IC8gRHIu
IERhdmlkIEFsYW4gR2lsYmVydCAgICB8ICAgICAgIFJ1bm5pbmcgR05VL0xpbnV4ICAgICAgIHwg
SGFwcHkgIFwKPiA+IFwgICAgICAgIGRhdmUgQCB0cmVibGlnLm9yZyB8ICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIHwgSW4gSGV4IC8KPiA+ICBcIF9fX19fX19fX19fX19fX19fX19fX19f
X198X19fX18gaHR0cDovL3d3dy50cmVibGlnLm9yZyAgIHxfX19fX19fLwo+IC0tCj4gIC0tLS0t
T3BlbiB1cCB5b3VyIGV5ZXMsIG9wZW4gdXAgeW91ciBtaW5kLCBvcGVuIHVwIHlvdXIgY29kZSAt
LS0tLS0tCj4gLyBEci4gRGF2aWQgQWxhbiBHaWxiZXJ0ICAgIHwgICAgICAgUnVubmluZyBHTlUv
TGludXggICAgICAgfCBIYXBweSAgXAo+IFwgICAgICAgIGRhdmUgQCB0cmVibGlnLm9yZyB8ICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgSW4gSGV4IC8KPiAgXCBfX19fX19fX19fX19f
X19fX19fX19fX19ffF9fX19fIGh0dHA6Ly93d3cudHJlYmxpZy5vcmcgICB8X19fX19fXy8KCgoK
LS0gClRoYW5rcywKClN0ZXZlCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSmZzLWRpc2N1c3Npb24gbWFpbGluZyBsaXN0Ckpmcy1kaXNjdXNzaW9uQGxp
c3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9s
aXN0aW5mby9qZnMtZGlzY3Vzc2lvbgo=
