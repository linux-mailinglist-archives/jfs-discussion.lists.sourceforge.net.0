Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1155583D64C
	for <lists+jfs-discussion@lfdr.de>; Fri, 26 Jan 2024 10:29:25 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rTIWI-00041e-Bt;
	Fri, 26 Jan 2024 09:29:06 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <brauner@kernel.org>) id 1rTIWH-00041U-L2
 for jfs-discussion@lists.sourceforge.net;
 Fri, 26 Jan 2024 09:29:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=EsZJXNT/gPdWq5ir9V7R2CNJU4AtQ+6C+F7sL99kZWg=; b=l7yBZ8uzWwt7TUmUX2SgqcAy4Q
 APZYPEUotBU61HUht07BnOkHDpwb2W2Ae3phsV5MX4j0ATlzzlcfoyzBXUXLJ5E3JdVv8FKmcMbRF
 eQzxBAMdnoXA0Aot/pivT3OqbVNu/r7s2y2oHvct/6jiJpYmKNV/vGmBUFWKf0//GFYs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=EsZJXNT/gPdWq5ir9V7R2CNJU4AtQ+6C+F7sL99kZWg=; b=gabBxMz1JkqA48CMULcGh6mNnl
 PVh409U7kRtNYLgPfPeEk+DWGofp4pWTfDZ8wqCFUBPUdOuZhcyj/MN6FJPA7MrEwBCAJQ3aWKlts
 xNjsu3aAXqXiiFlvuKRERatyRkt0bzUE3ZOlbiQV/8y74PaxbO2jtXTS4u/SYy/3VyFA=;
Received: from sin.source.kernel.org ([145.40.73.55])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rTIWG-0006O7-Co for jfs-discussion@lists.sourceforge.net;
 Fri, 26 Jan 2024 09:29:06 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 2471DCE364C;
 Fri, 26 Jan 2024 09:28:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 28614C433F1;
 Fri, 26 Jan 2024 09:28:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1706261333;
 bh=wGO52oyeTkXKOb5JwngA3efCMaB6GRi1DOXpxN9TR6w=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=T6alyyyxzl7eMrv3u5oVM5ZRImB72L+US1+QQ/YREwjFcum7MuoFI4ENoW6XxjaqP
 OnrSryPio5bFBBn515HKi9fW0fZOQmMGjwr4AUCdr9Cm0Ih0Pz1rqrPFKOQ/tpfeg2
 +w/r1I2c7iE+9g0HfYz7Gy4gcPyYtXpAPqt4lrEWwI6KTwjNeN+RLPvvelw8lkjMsi
 AA+t8yZ+ed1refFaxA6JcnTUFZjiPnTfcjr5buZ3N5AlDtfxPWAagGRJ/s0udkkOKv
 cc3MaUeRDyAzXsbmtdMVju4qweLmqJwVqwPwUUx+k2LWDkRH7AhBn41lMjFLVr8X2c
 bGs5hf2gPSd/w==
Date: Fri, 26 Jan 2024 10:28:48 +0100
To: Aleksandr Nogikh <nogikh@google.com>
Message-ID: <20240126-ferkel-verkraften-c13bc68f6c88@brauner>
References: <00000000000083513f060340d472@google.com>
 <000000000000e5e71a060fc3e747@google.com>
 <20240125-legten-zugleich-21a988d80b45@brauner>
 <11868eb4-0528-4298-b8bc-2621fd1aac83@kernel.dk>
 <20240125-addition-audienz-c955ab3c8435@brauner>
 <CANp29Y69y5Ctmcrf4SFFrMAD1hzsx+GYriDaa9q=3aexRspaxw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CANp29Y69y5Ctmcrf4SFFrMAD1hzsx+GYriDaa9q=3aexRspaxw@mail.gmail.com>
X-Spam-Score: -3.8 (---)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Thu, Jan 25, 2024 at 07:24:01PM +0100, Aleksandr Nogikh
    wrote: > On Thu, Jan 25, 2024 at 5:47 PM Christian Brauner <brauner@kernel.org>
    wrote: > > > > On Thu, Jan 25, 2024 at 09:11:34AM -0700, Je [...] 
 
 Content analysis details:   (-3.8 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
                             medium trust
                             [145.40.73.55 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -1.3 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1rTIWG-0006O7-Co
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
From: Christian Brauner via Jfs-discussion
 <jfs-discussion@lists.sourceforge.net>
Reply-To: Christian Brauner <brauner@kernel.org>
Cc: Jens Axboe <axboe@kernel.dk>, shaggy@kernel.org, hdanton@sina.com,
 jack@suse.cz, syzkaller-bugs@googlegroups.com,
 syzbot <syzbot+fb337a5ea8454f5f1e3f@syzkaller.appspotmail.com>,
 linux-kernel@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 jfs-discussion@lists.sourceforge.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

T24gVGh1LCBKYW4gMjUsIDIwMjQgYXQgMDc6MjQ6MDFQTSArMDEwMCwgQWxla3NhbmRyIE5vZ2lr
aCB3cm90ZToKPiBPbiBUaHUsIEphbiAyNSwgMjAyNCBhdCA1OjQ34oCvUE0gQ2hyaXN0aWFuIEJy
YXVuZXIgPGJyYXVuZXJAa2VybmVsLm9yZz4gd3JvdGU6Cj4gPgo+ID4gT24gVGh1LCBKYW4gMjUs
IDIwMjQgYXQgMDk6MTE6MzRBTSAtMDcwMCwgSmVucyBBeGJvZSB3cm90ZToKPiA+ID4gT24gVGh1
LCBKYW4gMjUsIDIwMjQgYXQgOTowOD9BTSBDaHJpc3RpYW4gQnJhdW5lciA8YnJhdW5lckBrZXJu
ZWwub3JnPiB3cm90ZToKPiA+ID4gPgo+ID4gPiA+IE9uIFRodSwgSmFuIDI1LCAyMDI0IGF0IDAz
OjU5OjAzQU0gLTA4MDAsIHN5emJvdCB3cm90ZToKPiA+ID4gPiA+IHN5emJvdCBzdXNwZWN0cyB0
aGlzIGlzc3VlIHdhcyBmaXhlZCBieSBjb21taXQ6Cj4gPiA+ID4gPgo+ID4gPiA+ID4gY29tbWl0
IDZmODYxNzY1NDY0ZjQzYTcxNDYyZDUyMDI2ZmJkZGZjODU4MjM5YTUKPiA+ID4gPiA+IEF1dGhv
cjogSmFuIEthcmEgPGphY2tAc3VzZS5jej4KPiA+ID4gPiA+IERhdGU6ICAgV2VkIE5vdiAxIDE3
OjQzOjEwIDIwMjMgKzAwMDAKPiA+ID4gPiA+Cj4gPiA+ID4gPiAgICAgZnM6IEJsb2NrIHdyaXRl
cyB0byBtb3VudGVkIGJsb2NrIGRldmljZXMKPiA+ID4gPiA+Cj4gPiA+ID4gPiBiaXNlY3Rpb24g
bG9nOiAgaHR0cHM6Ly9zeXprYWxsZXIuYXBwc3BvdC5jb20veC9iaXNlY3QudHh0P3g9MTMxNzVh
NTNlODAwMDAKPiA+ID4gPiA+IHN0YXJ0IGNvbW1pdDogICAyY2NkZDFiMTNjNTkgTGludXggNi41
LXJjNgo+ID4gPiA+ID4gZ2l0IHRyZWU6ICAgICAgIHVwc3RyZWFtCj4gPiA+ID4gPiBrZXJuZWwg
Y29uZmlnOiAgaHR0cHM6Ly9zeXprYWxsZXIuYXBwc3BvdC5jb20veC8uY29uZmlnP3g9OWMzN2Nj
MGU0ZmNjNWY4ZAo+ID4gPiA+ID4gZGFzaGJvYXJkIGxpbms6IGh0dHBzOi8vc3l6a2FsbGVyLmFw
cHNwb3QuY29tL2J1Zz9leHRpZD1mYjMzN2E1ZWE4NDU0ZjVmMWUzZgo+ID4gPiA+ID4gc3l6IHJl
cHJvOiAgICAgIGh0dHBzOi8vc3l6a2FsbGVyLmFwcHNwb3QuY29tL3gvcmVwcm8uc3l6P3g9MTdi
YTVkNTNhODAwMDAKPiA+ID4gPiA+IEMgcmVwcm9kdWNlcjogICBodHRwczovL3N5emthbGxlci5h
cHBzcG90LmNvbS94L3JlcHJvLmM/eD0xNDI2NTM3M2E4MDAwMAo+ID4gPiA+ID4KPiA+ID4gPiA+
IElmIHRoZSByZXN1bHQgbG9va3MgY29ycmVjdCwgcGxlYXNlIG1hcmsgdGhlIGlzc3VlIGFzIGZp
eGVkIGJ5IHJlcGx5aW5nIHdpdGg6Cj4gPiA+ID4KPiA+ID4gPiAjc3l6IGZpeDogZnM6IEJsb2Nr
IHdyaXRlcyB0byBtb3VudGVkIGJsb2NrIGRldmljZXMKPiA+ID4KPiA+ID4gTGlrZSBEYXZlIHJl
cGxpZWQgYSBmZXcgZGF5cyBhZ28sIEknbSBraW5kIG9mIHNrZXB0aWNhbCBvbiBhbGwgb2YgdGhl
c2UKPiA+ID4gYnVncyBiZWluZyBjbG9zZWQgYnkgdGhpcyBjaGFuZ2UuIEknbSBndWVzc2luZyB0
aGF0IHRoZXkgYXJlIGFsbAo+ID4gPiByZXNvbHZlZCBub3cgYmVjYXVzZSBhKSB0aGUgYmxvY2sg
d3JpdGVzIHdoaWxlIG1vdW50ZWQgb3B0aW9uIHdhcyBzZXQgdG8KPiA+ID4gWSwgYW5kIGIpIHRo
ZSBhY3R1YWwgYnVnIGlzIGp1c3QgbWFza2VkIGJ5IHRoYXQuCj4gCj4gWWVzLCB0aGF0J3MgdHJ1
ZS4gRm9yIGEpIHRoZXJlIGFyZSBhbHNvIHR3byBzdWItcmVhc29uczoKPiAxKSBUaGUgYnVnIGl0
c2VsZiBpcyBpbmRlZWQgbm8gbG9uZ2VyIHJlcHJvZHVjaWJsZSBiZWNhdXNlIG9mIHRoaXMgbmV3
Cj4ga2VybmVsIG9wdGlvbi4KPiAyKSBUaGUgYnVnIGlzIG5vdCByZXByb2R1Y2libGUgYmVjYXVz
ZSB0aGUgY2hhbmdlIGJyb2tlIHRoZSB3YXkKPiBzeXprYWxsZXIgZGlkIHRoZSBtb3VudHMgLS0g
d2UgdXNlZCB0byBob2xkIGFuIGZkIHRvIHRoZSBsb29wIGRldmljZQo+IHdoaWxlIGRvaW5nIHRo
ZSBtb3VudC4gVGhhdCB3YXMgZml4ZWRbMV0gc29vbiBhZnRlciB0aGUgY29tbWl0IHJlYWNoZWQK
PiB0b3J2YWxkcywgYnV0IGZvciBiaXNlY3Rpb25zIHN5emJvdCBoYXMgdG8gYnVpbGQgc3l6a2Fs
bGVyIGV4YWN0bHkgYXQKPiB0aGUgcmV2aXNpb24gd2hlbiB0aGUgcmVwcm9kdWNlciB3YXMgZm91
bmQgKG90aGVyd2lzZSBpdCBtYXkgcGFyc2UgdGhlCj4gc3l6IHJlcHJvZHVjZXIgaW5jb3JyZWN0
bHkpLiBTbyB0aGlzIGtlcm5lbCBjb21taXQgYmVjb21lcyBleGFjdGx5IHRoZQo+IHBvaW50IHdo
ZXJlIHRoZSByZXByb2R1Y2VyIHN0b3BzIHdvcmtpbmcuCj4gCj4gRm9yIG1vc3Qgb2YgdGhlIHJl
Y2VudGx5IGNsb3NlZCBmcyBidWdzICgyKSBzaG91bGQgbm90IGJlIHRoZSBwcmltYXJ5Cj4gcmVh
c29uIHRob3VnaCAtLSB0aGVzZSBmaXggYmlzZWN0aW9ucyBhcmUgZG9uZSBvbmx5IHdoZW4gc3l6
Ym90Cj4gc3RvcHBlZCBzZWVpbmcgY3Jhc2hlcyB3aXRoIHRoZSBjb3JyZXNwb25kaW5nIHRpdGxl
cywgd2hpY2ggd2FzIHZlcnkKPiBsaWtlbHkgY2F1c2VkIGJ5ICgxKSBpbiB0aGUgZmlyc3QgcGxh
Y2UuCj4gCj4gWzFdIGh0dHBzOi8vZ2l0aHViLmNvbS9nb29nbGUvc3l6a2FsbGVyL2NvbW1pdC81
NTE1ODdjMTkyZWNiNGRmMjZmY2RhYjc3NWVkMTQ1ZWU2OWMwN2Q0Cj4gCj4gPiA+Cj4gPiA+IE1h
eWJlIHRoaXMgaXMgZmluZSwgYnV0IGl0IGRvZXMgc2VlbSBhIGJpdC4uLiBza2V0Y2h5PyBUaGUg
YnVncyBhcmVuJ3QKPiA+ID4gcmVhbGx5IGZpeGVkLCBhbmQgd2hhdCBoYXBwZW5zIGlmIHNvbWVv
bmUgZG9lc24ndCB0dXJuIG9uIHRoYXQgb3B0aW9uPwo+ID4gPiBJZiBpdCdzIHJlcXVpcmVkLCBw
ZXJoYXBzIGl0IHNob3VsZCBub3QgYmUgYW4gb3B0aW9uIGF0IGFsbD8gVGhvdWdoCj4gPiA+IHRo
YXQnZCBzZWVtIHRvIGJlIGxpa2VseSB0byBicmVhayBzb21lIGZ1bmt5IHVzZSBjYXNlcywgd2hl
dGhlciB0aGV5IGFyZQo+ID4gPiB2YWxpZCBvciBub3QuCj4gPgo+ID4gV2UgaGF2ZSBubyB3YXkg
b2YgYWN0dWFsbHkgdGVzdGluZyBvciB2ZXJpZnlpbmcgdGhpcyBzdHVmZiBhbmQgYSBsb3Qgb2YK
PiA+IHRoZXNlIGhhdmUgYmVlbiBhcm91bmQgZm9yIGEgbG9uZyB0aW1lLiBGb3IgZXhhbXBsZSwg
dGhpcyByZXBvcnQgaGVyZQo+ID4gaGFzIGEgQyByZXByb2R1Y2VyIGJ1dCBmb2xsb3dpbmcgdGhl
IGFjdHVhbCBkYXNoYm9hcmQgbGluayB0aGF0Cj4gPiByZXByb2R1Y2VyIGlzIHN0cmlrZWQtdGhy
b3VnaCB3aGljaCBzdXBwb3NlZGx5IG1lYW5zIHRoYXQgaXQgaXNuJ3QgdmFsaWQKPiA+IG9yIHJl
bGlhYmxlLiBBbmQgbm8gb3RoZXIgcmVwcm9kdWNlciBldmVyIHNob3dlZCB1cC4KPiA+Cj4gPiBB
cyBmYXIgYXMgSSBjYW4gc2VlIHdlIHNob3VsZCBqdXN0IGNsb3NlIHJlcG9ydHMgc3VjaCBhcy4g
SWYgdGhpcyBpcyBhCj4gPiByZWFsIGJ1ZyB0aGF0IGlzIHNlcGFyYXRlIGZyb20gdGhlIGFiaWxp
dHkgdG8gbW91bnQgdG8gd3JpdGVkIGJsb2NrCj4gPiBkZXZpY2VzIHRoZW4gb25lIHNob3VsZCBo
b3BlIHRoYXQgc3l6Ym90IGZpbmRzIGFub3RoZXIgcmVwcm9kdWNlciB0aGF0Cj4gPiBsZXQncyB1
cyByZWFsbHkgYW5hbHl6ZSB0aGUgYnVnPwo+IAo+IFllcywgaWYgdGhlIGFiaWxpdHkgdG8gd3Jp
dGUgdG8gdGhlIGJsb2NrIGRldmljZSBpcyBub3QgcmVhbGx5Cj4gbmVjZXNzYXJ5IHRvIHRyaWdn
ZXIgdGhlIGJ1Zywgc3l6Ym90IHNob3VsZCBmaW5kIGl0IGFnYWluIGluIHNvbWUKPiB0aW1lLgo+
IAo+ID4KPiA+IEEgc2VwYXJhdGUgaXNzdWUgaXMgdGhhdCBzeXpib3Qga2VlcHMgc3VnZ2VzdGlu
ZyBhcyBhbGwgb2YgdGhlc2UgYmVpbmcKPiA+IGNsb3NhYmxlIGJlY2F1c2Ugb2YgdGhpcy4gU28g
aG93IHNlcmlvdXMgY2FuIHdlIHRha2UgdGhpcyBhbmQgaG93IG11Y2gKPiA+IHRpbWUgY2FuL3No
b3VsZCB3ZSBzcGVuZCBnaXZlbiB0aGF0IHdlIGdvdCB+MjAgb3IgbW9yZSBvZiB0aGVzZSBtYWls
cyBpbgo+ID4gdGhlIGxhc3QgdHdvIHdlZWtzIG9yIHNvLgo+IAo+IEkgY2FuIGFkZCB0aGUgImZz
OiBCbG9jayB3cml0ZXMgdG8gbW91bnRlZCBibG9jayBkZXZpY2VzIiBjb21taXQgdG8KPiB0aGUg
YmxhY2sgbGlzdCBmb3Igc3l6Ym90IGJpc2VjdGlvbnMgLS0gaXQgd2lsbCBzdG9wIHNlbmRpbmcg
c3VjaAo+IGVtYWlscyB0aGVuLgoKTm8sIEkgdGhpbmsgaXQncyBoZWxwZnVsLiBJIHdhcyBqdXN0
IHNheWluZyB0aGF0IHdlIGNhbid0IGJlIGV4cGVjdGVkIHRvCnNwZW5kIGhvdXJzIHBlciByZXBv
cnQgdG8gY2hlY2sgd2hldGhlciB0aGlzIG1ha2VzIHNlbnNlIG9yIG5vdC4gSQp3YXNuJ3QgY29t
cGxhaW5pbmcgYWJvdXQgdGhpcyBwZXIgc2UuCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSmZzLWRpc2N1c3Npb24gbWFpbGluZyBsaXN0Ckpmcy1kaXNj
dXNzaW9uQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5l
dC9saXN0cy9saXN0aW5mby9qZnMtZGlzY3Vzc2lvbgo=
