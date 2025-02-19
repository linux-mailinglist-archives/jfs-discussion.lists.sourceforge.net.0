Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 89B2FA3AD2E
	for <lists+jfs-discussion@lfdr.de>; Wed, 19 Feb 2025 01:41:07 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1tkY8G-0005Pj-BE;
	Wed, 19 Feb 2025 00:40:09 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <qasdev00@gmail.com>) id 1tkY8E-0005PU-Sq
 for jfs-discussion@lists.sourceforge.net;
 Wed, 19 Feb 2025 00:40:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4JHOHl2LXDy5H0c0r+6Un847IQsdcEJr0cAAnvM10wM=; b=kSZq/jRyFN/SydPeYHBi1Ozdra
 Hwnd8bOw5nO3qCTSgACChRsofcbyNEDdDsKe0AZfnSO31wVG/6yDXhfVFafaEix6nZqZpcXBVaC4N
 +/lR0bxGICNf3VjAh1wbvQ701OXit96eW7pHIaAVy80j2xlpAQ7n53QTJir+R7Gb/t08=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=4JHOHl2LXDy5H0c0r+6Un847IQsdcEJr0cAAnvM10wM=; b=H
 cwogxwFE2ChKDD1eZVU3RxVtOQNYSZ5Ys4D92SbhhouKKzAE9vNtK6b0WTFn84ty7/YJm/Dpn4cYN
 4Dks0mCzPvuljNKUeab2udIE3lLLnFI3EsGzNKgBH3Pe3hGd/oykOVShkC4nHLf1Wa8n3gGVN6wHz
 GUs73KjuLCs6ln3M=;
Received: from mail-wr1-f46.google.com ([209.85.221.46])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1tkY8E-0007uM-RD for jfs-discussion@lists.sourceforge.net;
 Wed, 19 Feb 2025 00:40:07 +0000
Received: by mail-wr1-f46.google.com with SMTP id
 ffacd0b85a97d-38f22fe8762so3110175f8f.2
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 18 Feb 2025 16:40:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1739925600; x=1740530400; darn=lists.sourceforge.net;
 h=content-transfer-encoding:content-disposition:mime-version:reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=4JHOHl2LXDy5H0c0r+6Un847IQsdcEJr0cAAnvM10wM=;
 b=SilvAGxe76HZYGq5WbssxNK1bLG92R7UtlLGDEZCjXVJx6q7l3/jscO3Bsu99FSIRg
 B/i2mC2ujFRM7bjaCqQariZpBFXoHFjZrHJmTlapFGEWdq9pJEZL4osrx1/hz8nUkaqo
 ssWixUhyjdY5Hq3qIz+5nSqn1OajSqND1M+6RdYN4Zgx0imwoZYFXlPplH0/F4R4Px2d
 d8zRrpbtxfm0O0D493ep5Vqqj/0uy+l204j06cri7Fg6IGqM0naVyrvdlIgAHZgQemOT
 6piRb3Xi7g2Su6b7NwqTb3aLwcL06qo/EdH20OWtfvGn9mUmhXMSWqVqf7u7BZd07350
 Ttkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1739925600; x=1740530400;
 h=content-transfer-encoding:content-disposition:mime-version:reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=4JHOHl2LXDy5H0c0r+6Un847IQsdcEJr0cAAnvM10wM=;
 b=ahakfWpuAbm1vuNTXEI/CFEKYDeISl2tt2dWKBxuuSPQx49CXNh9WbOGo4hVd3b9/e
 2uohlZjikKKYjFWzZOo4zlbbtPw/S6JltjHjfobHCKEDVQey6feEsqPCEdou4vYTSjao
 hakj4vaa3DtoBfWfi3KlvbfhbQgILgq0wLnsaA7oKlYJ957JUu3qnipdY231+TTI09jy
 YCYfBwFyWQoWEZj8C9jo+lm11hmBLybv7sbf/1mNrqzN94srftipMgjKI2aCvPFsl2fc
 BbJKO46xDy61IVOOKLtV+ZQ4Yk7avhRBZBHO5Ir4Y6aYaMSfdtlPmiu4yzSYsz+GKYuM
 JSww==
X-Forwarded-Encrypted: i=1;
 AJvYcCXbsKypNmhCgnZNY5IinkqVB2e3tYHwF39fTWM3ABocRezLc79szg81/+Xhj2uGkehWzjI/JfoPgm//6yKcHg==@lists.sourceforge.net
X-Gm-Message-State: AOJu0Yxtgnnxwc2hA8v/61FWt4WnuNuXRuUYHrc7LsRzMgVP/r8XTKPe
 QBwCCMT5R/Btju1FaI8wOM8WzTwM5yv38zPtIPB/Of1H6uNJ6nb4
X-Gm-Gg: ASbGncsqDfYwrkYumn0NE7RZ/PT1aXmSZek/EoKeloT/JSl2Ah0bct8c/1NN9Lq6CzZ
 WikXhIb6NJ7X9lpTZ7szCYKX4xFEg6jRzXYcR8VmyvA3HrhYNnJgoqM8wUhULvn7duGBX5fMwvj
 cJ1wDvhCi58LAQUaX3t0CD0TgWaA0VMaJKqBTbUDDdknogQ43iPnHxYVe6GIr+4PgVaFyXiS2na
 KN3F8sYMeQ/F6lwy1asgXAevOLyyBhwxre+8b6u8Z2eV/HQIS/b19AA4CYoEcCeAgP0x8VH5SCf
 NWyfutDQKbIhN1L0cI4=
X-Google-Smtp-Source: AGHT+IH3+KUECayclfSqQFaRWxuKG5B08STeM0zSF0183amtqyEvTCXByOdJbxpa7ysaG2Ke1EpuiQ==
X-Received: by 2002:a5d:518b:0:b0:38f:2f88:b034 with SMTP id
 ffacd0b85a97d-38f33f4e284mr11303156f8f.42.1739925600068; 
 Tue, 18 Feb 2025 16:40:00 -0800 (PST)
Received: from qasdev.system ([2a02:c7c:6696:8300:9fde:9e4f:b0fd:6a37])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-38f258b434fsm16570328f8f.16.2025.02.18.16.39.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 18 Feb 2025 16:39:58 -0800 (PST)
Date: Wed, 19 Feb 2025 00:39:47 +0000
To: Greg KH <gregkh@linuxfoundation.org>
Message-ID: <Z7UoUyuHzGWwvBOK@qasdev.system>
MIME-Version: 1.0
Content-Disposition: inline
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Feb 13, 2025 at 11:07:07AM +0100, Greg KH wrote: >
 On Thu, Feb 13, 2025 at 12:20:25AM +0000, Qasim Ijaz wrote: > > During the
 "size_check" label in ea_get(), the code checks if the extended > [...] 
 Content analysis details:   (0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.46 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.221.46 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.221.46 listed in bl.score.senderscore.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [qasdev00[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [qasdev00[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.46 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1tkY8E-0007uM-RD
Subject: Re: [Jfs-discussion] [PATCH] jfs: fix slab-out-of-bounds read in
 ea_get()
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
From: Qasim Ijaz via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: 2025021350-geometry-appear-9d84@gregkh
Cc: Qasim Ijaz <qasdev00@gmail.com>, shaggy@kernel.org,
 jfs-discussion@lists.sourceforge.net, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org, ancowi69@gmail.com,
 syzbot+4e6e7e4279d046613bc5@syzkaller.appspotmail.com, zhaomengmeng@kylinos.cn,
 llfamsec@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

T24gVGh1LCBGZWIgMTMsIDIwMjUgYXQgMTE6MDc6MDdBTSArMDEwMCwgR3JlZyBLSCB3cm90ZToK
PiBPbiBUaHUsIEZlYiAxMywgMjAyNSBhdCAxMjoyMDoyNUFNICswMDAwLCBRYXNpbSBJamF6IHdy
b3RlOgo+ID4gRHVyaW5nIHRoZSAic2l6ZV9jaGVjayIgbGFiZWwgaW4gZWFfZ2V0KCksIHRoZSBj
b2RlIGNoZWNrcyBpZiB0aGUgZXh0ZW5kZWQgCj4gPiBhdHRyaWJ1dGUgbGlzdCAoeGF0dHIpIHNp
emUgbWF0Y2hlcyBlYV9zaXplLiBJZiBub3QsIGl0IGxvZ3MgCj4gPiAiZWFfZ2V0OiBpbnZhbGlk
IGV4dGVuZGVkIGF0dHJpYnV0ZSIgYW5kIGNhbGxzIHByaW50X2hleF9kdW1wKCkuCj4gPiAKPiA+
IEhlcmUsIEVBTElTVF9TSVpFKGVhX2J1Zi0+eGF0dHIpIHJldHVybnMgNDExMDQxNzk2OCwgd2hp
Y2ggZXhjZWVkcyAKPiA+IElOVF9NQVggKDIsMTQ3LDQ4Myw2NDcpLiBUaGVuIGVhX3NpemUgaXMg
Y2xhbXBlZDoKPiA+IAo+ID4gCWludCBzaXplID0gY2xhbXBfdChpbnQsIGVhX3NpemUsIDAsIEVB
TElTVF9TSVpFKGVhX2J1Zi0+eGF0dHIpKTsKPiA+IAo+ID4gQWx0aG91Z2ggY2xhbXBfdCBhaW1z
IHRvIGJvdW5kIGVhX3NpemUgYmV0d2VlbiAwIGFuZCA0MTEwNDE3OTY4LCB0aGUgdXBwZXIgCj4g
PiBsaW1pdCBpcyB0cmVhdGVkIGFzIGFuIGludCwgY2F1c2luZyBhbiBvdmVyZmxvdyBhYm92ZSAy
XjMxIC0gMS4gVGhpcyBsZWFkcyAKPiA+ICJzaXplIiB0byB3cmFwIGFyb3VuZCBhbmQgYmVjb21l
IG5lZ2F0aXZlICgtMTg0NTQ5MzI4KS4KPiA+IAo+ID4gVGhlICJzaXplIiBpcyB0aGVuIHBhc3Nl
ZCB0byBwcmludF9oZXhfZHVtcCgpIChjYWxsZWQgImxlbiIgaW4gCj4gPiBwcmludF9oZXhfZHVt
cCgpKSwgaXQgaXMgcGFzc2VkIGFzIHR5cGUgc2l6ZV90IChhbiB1bnNpZ25lZCAKPiA+IHR5cGUp
LCB0aGlzIGlzIHRoZW4gc3RvcmVkIGluc2lkZSBhIHZhcmlhYmxlIGNhbGxlZCAKPiA+ICJpbnQg
cmVtYWluaW5nIiwgd2hpY2ggaXMgdGhlbiBhc3NpZ25lZCB0byAiaW50IGxpbmVsZW4iIHdoaWNo
IAo+ID4gaXMgdGhlbiBwYXNzZWQgdG8gaGV4X2R1bXBfdG9fYnVmZmVyKCkuIEluIHByaW50X2hl
eF9kdW1wKCkgCj4gPiB0aGUgZm9yIGxvb3AsIGl0ZXJhdGVzIHRocm91Z2ggMCB0byBsZW4tMSwg
d2hlcmUgbGVuIGlzIAo+ID4gMTg0NDY3NDQwNzM1MjUwMDIxNzYsIGNhbGxpbmcgaGV4X2R1bXBf
dG9fYnVmZmVyKCkgCj4gPiBvbiBlYWNoIGl0ZXJhdGlvbjoKPiA+IAo+ID4gCWZvciAoaSA9IDA7
IGkgPCBsZW47IGkgKz0gcm93c2l6ZSkgewo+ID4gCQlsaW5lbGVuID0gbWluKHJlbWFpbmluZywg
cm93c2l6ZSk7Cj4gPiAJCXJlbWFpbmluZyAtPSByb3dzaXplOwo+ID4gCj4gPiAJCWhleF9kdW1w
X3RvX2J1ZmZlcihwdHIgKyBpLCBsaW5lbGVuLCByb3dzaXplLCBncm91cHNpemUsCj4gPiAJCQkJ
ICAgbGluZWJ1Ziwgc2l6ZW9mKGxpbmVidWYpLCBhc2NpaSk7Cj4gPiAJCj4gPiAJCS4uLgo+ID4g
CX0KPiA+IAkKPiA+IFRoZSBleHBlY3RlZCBzdG9wcGluZyBjb25kaXRpb24gKGkgPCBsZW4pIGlz
IGVmZmVjdGl2ZWx5IGJyb2tlbiAKPiA+IHNpbmNlIGxlbiBpcyBjb3JydXB0ZWQgYW5kIHZlcnkg
bGFyZ2UuIFRoaXMgZXZlbnR1YWxseSBsZWFkcyB0byAKPiA+IHRoZSAicHRyK2kiIGJlaW5nIHBh
c3NlZCB0byBoZXhfZHVtcF90b19idWZmZXIoKSB0byBnZXQgY2xvc2VyIAo+ID4gdG8gdGhlIGVu
ZCBvZiB0aGUgYWN0dWFsIGJvdW5kcyBvZiAicHRyIiwgZXZlbnR1YWxseSBhbiBvdXQgb2YgCj4g
PiBib3VuZHMgYWNjZXNzIGlzIGRvbmUgaW4gaGV4X2R1bXBfdG9fYnVmZmVyKCkgaW4gdGhlIGZv
bGxvd2luZyAKPiA+IGZvciBsb29wOgo+ID4gCj4gPiAJZm9yIChqID0gMDsgaiA8IGxlbjsgaisr
KSB7Cj4gPiAJCQlpZiAobGluZWJ1ZmxlbiA8IGx4ICsgMikKPiA+IAkJCQlnb3RvIG92ZXJmbG93
MjsKPiA+IAkJCWNoID0gcHRyW2pdOwo+ID4gCQkuLi4KPiA+IAl9Cj4gPiAKPiA+IFRvIGZpeCB0
aGlzIHdlIHNob3VsZCB2YWxpZGF0ZSAiRUFMSVNUX1NJWkUoZWFfYnVmLT54YXR0cikiIAo+ID4g
YmVmb3JlIGl0IGlzIHV0aWxpc2VkLgo+ID4gCj4gPiBSZXBvcnRlZC1ieTogc3l6Ym90IDxzeXpi
b3QrNGU2ZTdlNDI3OWQwNDY2MTNiYzVAc3l6a2FsbGVyLmFwcHNwb3RtYWlsLmNvbT4KPiA+IFRl
c3RlZC1ieTogc3l6Ym90IDxzeXpib3QrNGU2ZTdlNDI3OWQwNDY2MTNiYzVAc3l6a2FsbGVyLmFw
cHNwb3RtYWlsLmNvbT4KPiA+IENsb3NlczogaHR0cHM6Ly9zeXprYWxsZXIuYXBwc3BvdC5jb20v
YnVnP2V4dGlkPTRlNmU3ZTQyNzlkMDQ2NjEzYmM1Cj4gPiBGaXhlczogZDlmOWQ5NjEzNmNiICgi
amZzOiB4YXR0cjogY2hlY2sgaW52YWxpZCB4YXR0ciBzaXplIG1vcmUgc3RyaWN0bHkiKQo+ID4g
U2lnbmVkLW9mZi1ieTogUWFzaW0gSWpheiA8cWFzZGV2MDBAZ21haWwuY29tPgo+ID4gLS0tCj4g
PiAgZnMvamZzL3hhdHRyLmMgfCAxNSArKysrKysrKysrLS0tLS0KPiA+ICAxIGZpbGUgY2hhbmdl
ZCwgMTAgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkKPiA+IAo+ID4gZGlmZiAtLWdpdCBh
L2ZzL2pmcy94YXR0ci5jIGIvZnMvamZzL3hhdHRyLmMKPiA+IGluZGV4IDI0YWZiYWU4NzIyNS4u
NzU3NWM1MWNjZTliIDEwMDY0NAo+ID4gLS0tIGEvZnMvamZzL3hhdHRyLmMKPiA+ICsrKyBiL2Zz
L2pmcy94YXR0ci5jCj4gPiBAQCAtNTU5LDExICs1NTUsMTYgQEAgc3RhdGljIGludCBlYV9nZXQo
c3RydWN0IGlub2RlICppbm9kZSwgc3RydWN0IGVhX2J1ZmZlciAqZWFfYnVmLCBpbnQgbWluX3Np
emUpCj4gPiAgCj4gPiAgICAgICAgc2l6ZV9jaGVjazoKPiA+ICAJaWYgKEVBTElTVF9TSVpFKGVh
X2J1Zi0+eGF0dHIpICE9IGVhX3NpemUpIHsKPiA+IC0JCWludCBzaXplID0gY2xhbXBfdChpbnQs
IGVhX3NpemUsIDAsIEVBTElTVF9TSVpFKGVhX2J1Zi0+eGF0dHIpKTsKPiA+IC0KPiA+IC0JCXBy
aW50ayhLRVJOX0VSUiAiZWFfZ2V0OiBpbnZhbGlkIGV4dGVuZGVkIGF0dHJpYnV0ZVxuIik7Cj4g
PiAtCQlwcmludF9oZXhfZHVtcChLRVJOX0VSUiwgIiIsIERVTVBfUFJFRklYX0FERFJFU1MsIDE2
LCAxLAo+ID4gLQkJCQkgICAgIGVhX2J1Zi0+eGF0dHIsIHNpemUsIDEpOwo+ID4gKwkJaWYgKHVu
bGlrZWx5KEVBTElTVF9TSVpFKGVhX2J1Zi0+eGF0dHIpID4gSU5UX01BWCkpIHsKPiA+ICsJCQlw
cmludGsoS0VSTl9FUlIgImVhX2dldDogZXh0ZW5kZWQgYXR0cmlidXRlIHNpemUgdG9vIGxhcmdl
OiAldSA+IElOVF9NQVhcbiIsCj4gPiArCQkJICAgICAgIEVBTElTVF9TSVpFKGVhX2J1Zi0+eGF0
dHIpKTsKPiA+ICsJCX0gZWxzZSB7Cj4gPiArCQkJaW50IHNpemUgPSBjbGFtcF90KGludCwgZWFf
c2l6ZSwgMCwgRUFMSVNUX1NJWkUoZWFfYnVmLT54YXR0cikpOwo+ID4gKwo+ID4gKwkJCXByaW50
ayhLRVJOX0VSUiAiZWFfZ2V0OiBpbnZhbGlkIGV4dGVuZGVkIGF0dHJpYnV0ZVxuIik7Cj4gPiAr
CQkJcHJpbnRfaGV4X2R1bXAoS0VSTl9FUlIsICIiLCBEVU1QX1BSRUZJWF9BRERSRVNTLCAxNiwg
MSwKPiA+ICsJCQkJICAgICAgIGVhX2J1Zi0+eGF0dHIsIHNpemUsIDEpOwo+ID4gKwkJfQo+ID4g
IAkJZWFfcmVsZWFzZShpbm9kZSwgZWFfYnVmKTsKPiA+ICAJCXJjID0gLUVJTzsKPiA+ICAJCWdv
dG8gY2xlYW5fdXA7Cj4gPiAtLSAKPiA+IDIuMzkuNQo+ID4gCj4gCj4gSGksCj4gCj4gVGhpcyBp
cyB0aGUgZnJpZW5kbHkgcGF0Y2gtYm90IG9mIEdyZWcgS3JvYWgtSGFydG1hbi4gIFlvdSBoYXZl
IHNlbnQgaGltCj4gYSBwYXRjaCB0aGF0IGhhcyB0cmlnZ2VyZWQgdGhpcyByZXNwb25zZS4gIEhl
IHVzZWQgdG8gbWFudWFsbHkgcmVzcG9uZAo+IHRvIHRoZXNlIGNvbW1vbiBwcm9ibGVtcywgYnV0
IGluIG9yZGVyIHRvIHNhdmUgaGlzIHNhbml0eSAoaGUga2VwdAo+IHdyaXRpbmcgdGhlIHNhbWUg
dGhpbmcgb3ZlciBhbmQgb3ZlciwgeWV0IHRvIGRpZmZlcmVudCBwZW9wbGUpLCBJIHdhcwo+IGNy
ZWF0ZWQuICBIb3BlZnVsbHkgeW91IHdpbGwgbm90IHRha2Ugb2ZmZW5jZSBhbmQgd2lsbCBmaXgg
dGhlIHByb2JsZW0KPiBpbiB5b3VyIHBhdGNoIGFuZCByZXN1Ym1pdCBpdCBzbyB0aGF0IGl0IGNh
biBiZSBhY2NlcHRlZCBpbnRvIHRoZSBMaW51eAo+IGtlcm5lbCB0cmVlLgo+IAo+IFlvdSBhcmUg
cmVjZWl2aW5nIHRoaXMgbWVzc2FnZSBiZWNhdXNlIG9mIHRoZSBmb2xsb3dpbmcgY29tbW9uIGVy
cm9yKHMpCj4gYXMgaW5kaWNhdGVkIGJlbG93Ogo+IAo+IC0gWW91IGhhdmUgbWFya2VkIGEgcGF0
Y2ggd2l0aCBhICJGaXhlczoiIHRhZyBmb3IgYSBjb21taXQgdGhhdCBpcyBpbiBhbgo+ICAgb2xk
ZXIgcmVsZWFzZWQga2VybmVsLCB5ZXQgeW91IGRvIG5vdCBoYXZlIGEgY2M6IHN0YWJsZSBsaW5l
IGluIHRoZQo+ICAgc2lnbmVkLW9mZi1ieSBhcmVhIGF0IGFsbCwgd2hpY2ggbWVhbnMgdGhhdCB0
aGUgcGF0Y2ggd2lsbCBub3QgYmUKPiAgIGFwcGxpZWQgdG8gYW55IG9sZGVyIGtlcm5lbCByZWxl
YXNlcy4gIFRvIHByb3Blcmx5IGZpeCB0aGlzLCBwbGVhc2UKPiAgIGZvbGxvdyB0aGUgZG9jdW1l
bnRlZCBydWxlcyBpbiB0aGUKPiAgIERvY3VtZW50YXRpb24vcHJvY2Vzcy9zdGFibGUta2VybmVs
LXJ1bGVzLnJzdCBmaWxlIGZvciBob3cgdG8gcmVzb2x2ZQo+ICAgdGhpcy4KPiAKPiBJZiB5b3Ug
d2lzaCB0byBkaXNjdXNzIHRoaXMgcHJvYmxlbSBmdXJ0aGVyLCBvciB5b3UgaGF2ZSBxdWVzdGlv
bnMgYWJvdXQKPiBob3cgdG8gcmVzb2x2ZSB0aGlzIGlzc3VlLCBwbGVhc2UgZmVlbCBmcmVlIHRv
IHJlc3BvbmQgdG8gdGhpcyBlbWFpbCBhbmQKPiBHcmVnIHdpbGwgcmVwbHkgb25jZSBoZSBoYXMg
ZHVnIG91dCBmcm9tIHRoZSBwZW5kaW5nIHBhdGNoZXMgcmVjZWl2ZWQKPiBmcm9tIG90aGVyIGRl
dmVsb3BlcnMuCj4KSGkgR3JlZywKCkp1c3QgZm9sbG93aW5nIHVwIG9uIHRoaXMgcGF0Y2guIEni
gJl2ZSBzZW50IHYyIHdpdGggdGhlIGFkZGVkIENDIHN0YWJsZSB0YWcuIEhlcmXigJlzIHRoZSBs
aW5rOgpodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvMjAyNTAyMTMyMTA1NTMuMjg2MTMtMS1x
YXNkZXYwMEBnbWFpbC5jb20vCgpMZXQgbWUga25vdyBpZiBhbnkgZnVydGhlciBjaGFuZ2VzIGFy
ZSBuZWVkZWQuCgpUaGFua3MsClFhc2ltCj4gdGhhbmtzLAo+IAo+IGdyZWcgay1oJ3MgcGF0Y2gg
ZW1haWwgYm90CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSmZzLWRpc2N1c3Npb24gbWFpbGluZyBsaXN0Ckpmcy1kaXNjdXNzaW9uQGxpc3RzLnNvdXJj
ZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9q
ZnMtZGlzY3Vzc2lvbgo=
