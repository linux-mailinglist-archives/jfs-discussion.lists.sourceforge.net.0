Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2989483CB94
	for <lists+jfs-discussion@lfdr.de>; Thu, 25 Jan 2024 19:50:40 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rT4nt-0006j7-Le;
	Thu, 25 Jan 2024 18:50:22 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <nogikh@google.com>) id 1rT4ns-0006iz-Ui
 for jfs-discussion@lists.sourceforge.net;
 Thu, 25 Jan 2024 18:50:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bVbxbr6LNVA4m+1guLf1yBKa8ZYscvBPPrsKeyi1Y40=; b=Y0Y1cnn4Qf8nBKLimarPln/hen
 rLYZS//Aysgn0Tlq05ygtypkhlu+c9ecfGqMrH9PReiR5uEOwqBeo0nDglkfU/d7ZW5SJASn9PW2Y
 IPXFiX46HSBQowsoQYx/qKV55/LZjcYdqPAdwYJ3cttVr2aXtfwDi5/g2bkel2nPAnLw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=bVbxbr6LNVA4m+1guLf1yBKa8ZYscvBPPrsKeyi1Y40=; b=XLue+aiGHq/DVhCTIweIs+Mb+O
 fB0VVT2eFKVoQ/qgcDC0MKpuXWbP/ydScSjBZNS3u8gqP1zK6ajdsas0tyhMKiE/0k1wq0xxc57AZ
 w70yMP9AHc167lwKZt+ZThknPe/KlAMJr0SY5A+2OppEMS6oXJhizzN9O6WgzA9DszxE=;
Received: from mail-pl1-f171.google.com ([209.85.214.171])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rT4nr-0004mv-VF for jfs-discussion@lists.sourceforge.net;
 Thu, 25 Jan 2024 18:50:21 +0000
Received: by mail-pl1-f171.google.com with SMTP id
 d9443c01a7336-1d72d240c69so10615ad.1
 for <jfs-discussion@lists.sourceforge.net>;
 Thu, 25 Jan 2024 10:50:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1706208615; x=1706813415;
 darn=lists.sourceforge.net; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=bVbxbr6LNVA4m+1guLf1yBKa8ZYscvBPPrsKeyi1Y40=;
 b=ecrv5b4Zsf8nKNyR+ooO8dPeiKAkIhivT35pQ7LznZ+cYArA+Jbrx0a6WsEgzW7UI4
 CScfiEd2Xyoptnzcn1CX9VStqgwmlEghJd4MYZZ7qxGRrJIcQYZhYxtDgt6oLaF59sYB
 YJEhe1XbynzE6mnYtqoqV/bzQHejpAPxQiaCaJEbTj3gPA0dm/u11ZkPMMxRozgjViS3
 C8+Ln7RAssnkYvlr5sWAKu6l3mSHkE9hfIeg1vRXlDopAiBu9/YQLDitGxyOV8zPJHbz
 gFF0FnUOfyh+0uRM/EW3DHpPYgXrXXpPc1qW+9iNI90RKbmhvDXiUZE3Q6LX3cMfoW/M
 43UA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1706208615; x=1706813415;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=bVbxbr6LNVA4m+1guLf1yBKa8ZYscvBPPrsKeyi1Y40=;
 b=B/oSDnNifg9MeqWVCTbgGGN7gzSOwk7yRjGxUyA6yJFlm4FaNCZEskkRyMVM/7/Msm
 XVdii3O6zPUsQ125PMxOLOd1/EXvBXPOdm/rHkana7vjuRC9F2gdHPHnIMe7YNqawCIR
 1/PfGzFIP0qR8AW1xIOXU17gVp1id5jQGGgYYZ8LtDVvIG7k1XOrewmlzYGU9eo4DD08
 YbB82xnq9nmLn8OOesgUmUtl+SloX1wMq1vf1r6Z0CgjgjmXn9l7iFpNg2p55P8aynG4
 JDKqV3GoGlRbIrChVlfXkWuxoTPdxbPd5NuMhvDS81aZN56sj1ZlUyFhehFKyCeVjYuU
 70Og==
X-Gm-Message-State: AOJu0YxukPUznAqhbSZ1GUrqtfj5h0uFHjluBf/NUyVakaIW0rrmrZQX
 GkzVb+PLJbejDGHL1GOGHfoLo4+ym2BhAB+Z80azfuYdHBIbQf1BoSTroz2E3G0XN4KQPY8lseV
 /6HeClkBi03wpDynldAWx5SMW4e8KSssS83hez1TDKA9b/bXMl4U4
X-Google-Smtp-Source: AGHT+IG4ktaL/+qGghqfraAYkeHm+Jg0sX/q3huOFE8F/jos8hIAyxhdJFLMRVOuCCBDJoL8nJCKQu0dlG83Bi5eCMg=
X-Received: by 2002:a17:903:607:b0:1d6:f66b:1057 with SMTP id
 kg7-20020a170903060700b001d6f66b1057mr300590plb.28.1706207052993; Thu, 25 Jan
 2024 10:24:12 -0800 (PST)
MIME-Version: 1.0
References: <00000000000083513f060340d472@google.com>
 <000000000000e5e71a060fc3e747@google.com>
 <20240125-legten-zugleich-21a988d80b45@brauner>
 <11868eb4-0528-4298-b8bc-2621fd1aac83@kernel.dk>
 <20240125-addition-audienz-c955ab3c8435@brauner>
In-Reply-To: <20240125-addition-audienz-c955ab3c8435@brauner>
Date: Thu, 25 Jan 2024 19:24:01 +0100
Message-ID: <CANp29Y69y5Ctmcrf4SFFrMAD1hzsx+GYriDaa9q=3aexRspaxw@mail.gmail.com>
To: Christian Brauner <brauner@kernel.org>
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Thu, Jan 25, 2024 at 5:47 PM Christian Brauner <brauner@kernel.org>
    wrote: > > On Thu, Jan 25, 2024 at 09:11:34AM -0700, Jens Axboe wrote: >
   > On Thu, Jan 25, 2024 at 9:08?AM Christian Brauner <b [...] 
 
 Content analysis details:   (-15.7 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
                             welcome-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
                             welcome-list
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.214.171 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.214.171 listed in list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
                             Match
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium trust sender
X-Headers-End: 1rT4nr-0004mv-VF
Subject: Re: [Jfs-discussion] [syzbot] [jfs?] INFO: task hung in path_mount
 (2)
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
From: Aleksandr Nogikh via Jfs-discussion
 <jfs-discussion@lists.sourceforge.net>
Reply-To: Aleksandr Nogikh <nogikh@google.com>
Cc: Jens Axboe <axboe@kernel.dk>, shaggy@kernel.org, hdanton@sina.com,
 jack@suse.cz, syzkaller-bugs@googlegroups.com,
 syzbot <syzbot+fb337a5ea8454f5f1e3f@syzkaller.appspotmail.com>,
 linux-kernel@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 jfs-discussion@lists.sourceforge.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

T24gVGh1LCBKYW4gMjUsIDIwMjQgYXQgNTo0N+KAr1BNIENocmlzdGlhbiBCcmF1bmVyIDxicmF1
bmVyQGtlcm5lbC5vcmc+IHdyb3RlOgo+Cj4gT24gVGh1LCBKYW4gMjUsIDIwMjQgYXQgMDk6MTE6
MzRBTSAtMDcwMCwgSmVucyBBeGJvZSB3cm90ZToKPiA+IE9uIFRodSwgSmFuIDI1LCAyMDI0IGF0
IDk6MDg/QU0gQ2hyaXN0aWFuIEJyYXVuZXIgPGJyYXVuZXJAa2VybmVsLm9yZz4gd3JvdGU6Cj4g
PiA+Cj4gPiA+IE9uIFRodSwgSmFuIDI1LCAyMDI0IGF0IDAzOjU5OjAzQU0gLTA4MDAsIHN5emJv
dCB3cm90ZToKPiA+ID4gPiBzeXpib3Qgc3VzcGVjdHMgdGhpcyBpc3N1ZSB3YXMgZml4ZWQgYnkg
Y29tbWl0Ogo+ID4gPiA+Cj4gPiA+ID4gY29tbWl0IDZmODYxNzY1NDY0ZjQzYTcxNDYyZDUyMDI2
ZmJkZGZjODU4MjM5YTUKPiA+ID4gPiBBdXRob3I6IEphbiBLYXJhIDxqYWNrQHN1c2UuY3o+Cj4g
PiA+ID4gRGF0ZTogICBXZWQgTm92IDEgMTc6NDM6MTAgMjAyMyArMDAwMAo+ID4gPiA+Cj4gPiA+
ID4gICAgIGZzOiBCbG9jayB3cml0ZXMgdG8gbW91bnRlZCBibG9jayBkZXZpY2VzCj4gPiA+ID4K
PiA+ID4gPiBiaXNlY3Rpb24gbG9nOiAgaHR0cHM6Ly9zeXprYWxsZXIuYXBwc3BvdC5jb20veC9i
aXNlY3QudHh0P3g9MTMxNzVhNTNlODAwMDAKPiA+ID4gPiBzdGFydCBjb21taXQ6ICAgMmNjZGQx
YjEzYzU5IExpbnV4IDYuNS1yYzYKPiA+ID4gPiBnaXQgdHJlZTogICAgICAgdXBzdHJlYW0KPiA+
ID4gPiBrZXJuZWwgY29uZmlnOiAgaHR0cHM6Ly9zeXprYWxsZXIuYXBwc3BvdC5jb20veC8uY29u
ZmlnP3g9OWMzN2NjMGU0ZmNjNWY4ZAo+ID4gPiA+IGRhc2hib2FyZCBsaW5rOiBodHRwczovL3N5
emthbGxlci5hcHBzcG90LmNvbS9idWc/ZXh0aWQ9ZmIzMzdhNWVhODQ1NGY1ZjFlM2YKPiA+ID4g
PiBzeXogcmVwcm86ICAgICAgaHR0cHM6Ly9zeXprYWxsZXIuYXBwc3BvdC5jb20veC9yZXByby5z
eXo/eD0xN2JhNWQ1M2E4MDAwMAo+ID4gPiA+IEMgcmVwcm9kdWNlcjogICBodHRwczovL3N5emth
bGxlci5hcHBzcG90LmNvbS94L3JlcHJvLmM/eD0xNDI2NTM3M2E4MDAwMAo+ID4gPiA+Cj4gPiA+
ID4gSWYgdGhlIHJlc3VsdCBsb29rcyBjb3JyZWN0LCBwbGVhc2UgbWFyayB0aGUgaXNzdWUgYXMg
Zml4ZWQgYnkgcmVwbHlpbmcgd2l0aDoKPiA+ID4KPiA+ID4gI3N5eiBmaXg6IGZzOiBCbG9jayB3
cml0ZXMgdG8gbW91bnRlZCBibG9jayBkZXZpY2VzCj4gPgo+ID4gTGlrZSBEYXZlIHJlcGxpZWQg
YSBmZXcgZGF5cyBhZ28sIEknbSBraW5kIG9mIHNrZXB0aWNhbCBvbiBhbGwgb2YgdGhlc2UKPiA+
IGJ1Z3MgYmVpbmcgY2xvc2VkIGJ5IHRoaXMgY2hhbmdlLiBJJ20gZ3Vlc3NpbmcgdGhhdCB0aGV5
IGFyZSBhbGwKPiA+IHJlc29sdmVkIG5vdyBiZWNhdXNlIGEpIHRoZSBibG9jayB3cml0ZXMgd2hp
bGUgbW91bnRlZCBvcHRpb24gd2FzIHNldCB0bwo+ID4gWSwgYW5kIGIpIHRoZSBhY3R1YWwgYnVn
IGlzIGp1c3QgbWFza2VkIGJ5IHRoYXQuCgpZZXMsIHRoYXQncyB0cnVlLiBGb3IgYSkgdGhlcmUg
YXJlIGFsc28gdHdvIHN1Yi1yZWFzb25zOgoxKSBUaGUgYnVnIGl0c2VsZiBpcyBpbmRlZWQgbm8g
bG9uZ2VyIHJlcHJvZHVjaWJsZSBiZWNhdXNlIG9mIHRoaXMgbmV3Cmtlcm5lbCBvcHRpb24uCjIp
IFRoZSBidWcgaXMgbm90IHJlcHJvZHVjaWJsZSBiZWNhdXNlIHRoZSBjaGFuZ2UgYnJva2UgdGhl
IHdheQpzeXprYWxsZXIgZGlkIHRoZSBtb3VudHMgLS0gd2UgdXNlZCB0byBob2xkIGFuIGZkIHRv
IHRoZSBsb29wIGRldmljZQp3aGlsZSBkb2luZyB0aGUgbW91bnQuIFRoYXQgd2FzIGZpeGVkWzFd
IHNvb24gYWZ0ZXIgdGhlIGNvbW1pdCByZWFjaGVkCnRvcnZhbGRzLCBidXQgZm9yIGJpc2VjdGlv
bnMgc3l6Ym90IGhhcyB0byBidWlsZCBzeXprYWxsZXIgZXhhY3RseSBhdAp0aGUgcmV2aXNpb24g
d2hlbiB0aGUgcmVwcm9kdWNlciB3YXMgZm91bmQgKG90aGVyd2lzZSBpdCBtYXkgcGFyc2UgdGhl
CnN5eiByZXByb2R1Y2VyIGluY29ycmVjdGx5KS4gU28gdGhpcyBrZXJuZWwgY29tbWl0IGJlY29t
ZXMgZXhhY3RseSB0aGUKcG9pbnQgd2hlcmUgdGhlIHJlcHJvZHVjZXIgc3RvcHMgd29ya2luZy4K
CkZvciBtb3N0IG9mIHRoZSByZWNlbnRseSBjbG9zZWQgZnMgYnVncyAoMikgc2hvdWxkIG5vdCBi
ZSB0aGUgcHJpbWFyeQpyZWFzb24gdGhvdWdoIC0tIHRoZXNlIGZpeCBiaXNlY3Rpb25zIGFyZSBk
b25lIG9ubHkgd2hlbiBzeXpib3QKc3RvcHBlZCBzZWVpbmcgY3Jhc2hlcyB3aXRoIHRoZSBjb3Jy
ZXNwb25kaW5nIHRpdGxlcywgd2hpY2ggd2FzIHZlcnkKbGlrZWx5IGNhdXNlZCBieSAoMSkgaW4g
dGhlIGZpcnN0IHBsYWNlLgoKWzFdIGh0dHBzOi8vZ2l0aHViLmNvbS9nb29nbGUvc3l6a2FsbGVy
L2NvbW1pdC81NTE1ODdjMTkyZWNiNGRmMjZmY2RhYjc3NWVkMTQ1ZWU2OWMwN2Q0Cgo+ID4KPiA+
IE1heWJlIHRoaXMgaXMgZmluZSwgYnV0IGl0IGRvZXMgc2VlbSBhIGJpdC4uLiBza2V0Y2h5PyBU
aGUgYnVncyBhcmVuJ3QKPiA+IHJlYWxseSBmaXhlZCwgYW5kIHdoYXQgaGFwcGVucyBpZiBzb21l
b25lIGRvZXNuJ3QgdHVybiBvbiB0aGF0IG9wdGlvbj8KPiA+IElmIGl0J3MgcmVxdWlyZWQsIHBl
cmhhcHMgaXQgc2hvdWxkIG5vdCBiZSBhbiBvcHRpb24gYXQgYWxsPyBUaG91Z2gKPiA+IHRoYXQn
ZCBzZWVtIHRvIGJlIGxpa2VseSB0byBicmVhayBzb21lIGZ1bmt5IHVzZSBjYXNlcywgd2hldGhl
ciB0aGV5IGFyZQo+ID4gdmFsaWQgb3Igbm90Lgo+Cj4gV2UgaGF2ZSBubyB3YXkgb2YgYWN0dWFs
bHkgdGVzdGluZyBvciB2ZXJpZnlpbmcgdGhpcyBzdHVmZiBhbmQgYSBsb3Qgb2YKPiB0aGVzZSBo
YXZlIGJlZW4gYXJvdW5kIGZvciBhIGxvbmcgdGltZS4gRm9yIGV4YW1wbGUsIHRoaXMgcmVwb3J0
IGhlcmUKPiBoYXMgYSBDIHJlcHJvZHVjZXIgYnV0IGZvbGxvd2luZyB0aGUgYWN0dWFsIGRhc2hi
b2FyZCBsaW5rIHRoYXQKPiByZXByb2R1Y2VyIGlzIHN0cmlrZWQtdGhyb3VnaCB3aGljaCBzdXBw
b3NlZGx5IG1lYW5zIHRoYXQgaXQgaXNuJ3QgdmFsaWQKPiBvciByZWxpYWJsZS4gQW5kIG5vIG90
aGVyIHJlcHJvZHVjZXIgZXZlciBzaG93ZWQgdXAuCj4KPiBBcyBmYXIgYXMgSSBjYW4gc2VlIHdl
IHNob3VsZCBqdXN0IGNsb3NlIHJlcG9ydHMgc3VjaCBhcy4gSWYgdGhpcyBpcyBhCj4gcmVhbCBi
dWcgdGhhdCBpcyBzZXBhcmF0ZSBmcm9tIHRoZSBhYmlsaXR5IHRvIG1vdW50IHRvIHdyaXRlZCBi
bG9jawo+IGRldmljZXMgdGhlbiBvbmUgc2hvdWxkIGhvcGUgdGhhdCBzeXpib3QgZmluZHMgYW5v
dGhlciByZXByb2R1Y2VyIHRoYXQKPiBsZXQncyB1cyByZWFsbHkgYW5hbHl6ZSB0aGUgYnVnPwoK
WWVzLCBpZiB0aGUgYWJpbGl0eSB0byB3cml0ZSB0byB0aGUgYmxvY2sgZGV2aWNlIGlzIG5vdCBy
ZWFsbHkKbmVjZXNzYXJ5IHRvIHRyaWdnZXIgdGhlIGJ1Zywgc3l6Ym90IHNob3VsZCBmaW5kIGl0
IGFnYWluIGluIHNvbWUKdGltZS4KCj4KPiBBIHNlcGFyYXRlIGlzc3VlIGlzIHRoYXQgc3l6Ym90
IGtlZXBzIHN1Z2dlc3RpbmcgYXMgYWxsIG9mIHRoZXNlIGJlaW5nCj4gY2xvc2FibGUgYmVjYXVz
ZSBvZiB0aGlzLiBTbyBob3cgc2VyaW91cyBjYW4gd2UgdGFrZSB0aGlzIGFuZCBob3cgbXVjaAo+
IHRpbWUgY2FuL3Nob3VsZCB3ZSBzcGVuZCBnaXZlbiB0aGF0IHdlIGdvdCB+MjAgb3IgbW9yZSBv
ZiB0aGVzZSBtYWlscyBpbgo+IHRoZSBsYXN0IHR3byB3ZWVrcyBvciBzby4KCkkgY2FuIGFkZCB0
aGUgImZzOiBCbG9jayB3cml0ZXMgdG8gbW91bnRlZCBibG9jayBkZXZpY2VzIiBjb21taXQgdG8K
dGhlIGJsYWNrIGxpc3QgZm9yIHN5emJvdCBiaXNlY3Rpb25zIC0tIGl0IHdpbGwgc3RvcCBzZW5k
aW5nIHN1Y2gKZW1haWxzIHRoZW4uCgotLSAKQWxla3NhbmRyCgo+Cj4gSSBoYXZlIG5vIGJldHRl
ciBhbnN3ZXJzIHRoYW4gdGhpcyB0YmguIEFuZCBmd2l3LCBhcGFydCBmcm9tIHRoaXMgb25lIEkK
PiBoYXZlbid0IGNsb3NlZCBhIHNpbmdsZSBidWcgYmFzZWQgb24gdGhpcy4KPgo+IEFuZCB5ZXMs
IGlkZWFsbHkgdGhlIGFiaWxpdHkgdG8gd3JpdGUgdG8gbW91bnRlZCBibG9jayBkZXZpY2VzIHNo
b3VsZCBiZQo+IHR1cm5lZCBvZmYuIEJ1dCB3ZSdsbCBoYXZlIHRvIGxldCBpdCB0cmlja2xlIGlu
dG8gdGhlIGluZGl2aWR1YWwKPiBkaXN0cmlidXRpb25zIGZpcnN0IGFuZCBtYWtlIHJlbWFpbmlu
ZyB1c2Vyc3BhY2UgdG9vbHMgdGhhdCByZWx5IG9uIHRoaXMKPiBtb3ZlIHRvIGFsdGVybmF0ZSBh
cGlzIGJlZm9yZSB3ZSBjYW4gbWFrZSBhbnkgc2VyaW91cyBlZmZvcnQuCj4KCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpKZnMtZGlzY3Vzc2lvbiBtYWls
aW5nIGxpc3QKSmZzLWRpc2N1c3Npb25AbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlz
dHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL2pmcy1kaXNjdXNzaW9uCg==
