Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D4270673CA0
	for <lists+jfs-discussion@lfdr.de>; Thu, 19 Jan 2023 15:45:11 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1pIW9r-0002wW-7V;
	Thu, 19 Jan 2023 14:44:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <stefan.tibus@gmx.de>) id 1pIQjr-0004GK-Mu
 for jfs-discussion@lists.sourceforge.net;
 Thu, 19 Jan 2023 08:57:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Ss/yKTcivxB/gSkpd0zbu5+fJlguOoSSdUv4hguls+Y=; b=jwJ3HIWV2Rlv5qMwc6jJYAY1Lq
 LpU6EsS+3+5pmcd/gkFWhJvRGEJSUeEFAIiIGw7Kx70zGU9V2DvoM1whi8WzKz52TDZmDHBJcv+YF
 Gndmxf8xiWiDaLJIBC9qKbYTLVVNtrF7/j8qqi3tdC+TxosArjvq8UqPUIBJcFZCv5+k=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Ss/yKTcivxB/gSkpd0zbu5+fJlguOoSSdUv4hguls+Y=; b=FFyMkR324HABbpmW/08WpQBxM3
 BQGGQpF59d03krExuMb+WuRP/WjMvJviGFpuY4oK6Il4ZDHy8dAkd4XkDp5f/epx1tmo/FU5ZyC3G
 +IDY27x4QwAce/0SI+P9q1IZqlakXDu5fnb6eKwcPjomp62nD9IZnMT/KBPloFem291A=;
Received: from mout.gmx.net ([212.227.15.19])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pIQjl-008l5N-Qo for jfs-discussion@lists.sourceforge.net;
 Thu, 19 Jan 2023 08:57:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.de; s=s31663417;
 t=1674118640; bh=QKC55KRrwm4FmCMM7ZjpR2Ch+0TKB6P79wpjtTYJZxE=;
 h=X-UI-Sender-Class:Date:From:To:Cc:Subject:References:In-Reply-To;
 b=OzqSMzUCT5JyPWtkuKmIkk4PH7yLBon1Qq+SMAKkwIriFhy9fddqerzE/zmjxGgl1
 9njbL775p4qBVjUs7vpaiPMOTbee6O4EMGBcN68YlX9KW14aySeYyIvPrP0RfMFAaV
 AOBEsXgArmxBSq/BlapPSo0UUpxgM+NVRq4Y31qTLiJGKK8XkCe40tTuWKvaP0pozK
 r3UfxqEcwK5ShEJAFqtTXtoDUFT5TggcVWgmVNNbu0R08TEySAkRtES1JxWWt1Jjim
 E23owomXuYSbZLw+Y3sSLeZ6NLPyFtrifTuTuq/fJTG4VFcNLH5hdHmITlzRHpKIBf
 zMrVfqu0l35bg==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from tibus.st ([37.221.194.93]) by mail.gmx.net (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1M8hV5-1pMZTC3kpN-004nUd; Thu, 19
 Jan 2023 09:57:19 +0100
Date: Thu, 19 Jan 2023 09:05:32 +0100
From: Stefan Tibus <stefan.tibus@gmx.de>
To: Andreas Dilger <adilger@dilger.ca>
Message-ID: <20230119080532.crn7wzo4jz5x5ng3@tibus.st>
Mail-Followup-To: Andreas Dilger <adilger@dilger.ca>,
 Dave Kleikamp <dave.kleikamp@oracle.com>,
 Christoph Hellwig <hch@infradead.org>,
 linux-fsdevel@vger.kernel.org, jfs-discussion@lists.sourceforge.net,
 Harald Arnesen <harald@skogtun.org>, linux-kernel@vger.kernel.org
References: <f99e5221-4493-dba3-3e80-e85ada6b3545@oracle.com>
 <393B8E4A-8C9A-4941-9AFF-FAC9C0D0B2DA@dilger.ca>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <393B8E4A-8C9A-4941-9AFF-FAC9C0D0B2DA@dilger.ca>
User-Agent: NeoMutt/20170609 (1.8.3)
X-Provags-ID: V03:K1:iXEXS01C5YVpvNHOOvEKmVW0Vigu74L9c2nVpUt3/xkrm+raGy0
 zziGLiU9JcGdPueJK14m8goVogo1o6uAzMRqBtQPacp0PGd9npot6YMZYq1Totp0KsVFeZx
 K1k0h/uTjAK/uBIG2ZNA90KQBLbLEZIRI6x4huO35+xSmSCBZDunSNSRdxrlQgGbhj4Yl39
 TRQ2ULrGVAPLkDNjYau3g==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:7Kk14hf0FvI=;umrs9NNFVJ/HMONmf0Ix4XSWy3L
 Jhk6zpuUJe+gIeDWV/CPRtixr0CAmGdjGTGo7PXCHsed17J7ZPCn3JM6Af2qUl4tAhENg/HEW
 qpWgVjiRL6Jq75SiZMEMNOattbmE1UBRkvZCUPaEdMRT7NZ68/eiFhGJCuWPVPSjkv/DRx2bP
 ZTR0XU8M1l/U2TifawSmFQPA42rGIhjp4cM73RRTS+Wn/M/9zA17wla0e6jIrAkdKx1JiYziN
 7mRkr66GB+TTLnxtsD7LbLGoijydHKgDqSzcKiov9ZUNiWVhYyWqFbbmWmxN7kINDDzKnIkZA
 ebn4stPvU9Swc4wCaC/LE1Fzb+fgZLCOAvKe3eWzijN5esGBoROGQHwuy+HQ1aK/BSyA1LbF0
 s4Q+uQ1hYr08AQpmYdU1rTmj6RmFdX39K1xFdQm4ck/Pfc1GTaQ6M+6VAYcYqD7OPNEWG14FM
 /RYW5AIdglBQpUt7+xWfiW6/5Y0Xe9KCfM5H6TRoEQX2nTPIU2XCoW2xalGAPTIK/cQ6z9M+E
 zWIlGONU1x1+gnUm8NAKp7FF4Gv96TrBbXeiZT93znnIwet5iJDgUV/0oJHdo7VHXGobs4UUu
 fRAfQgPG2afZ8rWbUdDYMlwQICp//Cg6EQfoyRLXUvx7Ls2/LKrfcRK1Z1qWetBOwZ2XZYtFF
 J32yEREqyVpqbbbqGmgmbrgoOLzWLUZxO8tSP6s83VWuELB0lyqyu3QnE6Hbc5HvLZ/Iw6Qqo
 qKuxCKBVbCKPwz5AXv5ExjO8VJSSxGFzwMH5Lohp44zjItDg+a3UjXTK6wL97H0EzFW49s9qh
 /EcJmQC60FysBrAtLQHwvBbIqgkLDmhNvIITeb4hZTjodwc1homNzTgAKx7Z/ReiAurHC7zaF
 SuwBV0Y8lntek2jYPnGC6YL/9T86OdRDNAuCMh9yRfeczCfiZJe4+/eF8XD5yFC3i1H1rpMUX
 Me7eoLzkCDtX4Fj8lt3w3UMK8L8=
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi all, While I am mostly an ordinary user running Linux on
 my own machines at home, I must say that I have been a happy user of JFS
 from quite early on on all my Linux installations, for which I use the Debi
 [...] Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.15.19 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.15.19 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [stefan.tibus[at]gmx.de]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1pIQjl-008l5N-Qo
X-Mailman-Approved-At: Thu, 19 Jan 2023 14:44:49 +0000
Subject: Re: [Jfs-discussion] Should we orphan JFS?
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
Cc: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 Christoph Hellwig <hch@infradead.org>, linux-fsdevel@vger.kernel.org,
 Harald Arnesen <harald@skogtun.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

SGkgYWxsLAoKV2hpbGUgSSBhbSBtb3N0bHkgYW4gb3JkaW5hcnkgdXNlciBydW5uaW5nIExpbnV4
IG9uIG15IG93biBtYWNoaW5lcyBhdApob21lLCBJIG11c3Qgc2F5IHRoYXQgSSBoYXZlIGJlZW4g
YSBoYXBweSB1c2VyIG9mIEpGUyBmcm9tIHF1aXRlIGVhcmx5Cm9uIG9uIGFsbCBteSBMaW51eCBp
bnN0YWxsYXRpb25zLCBmb3Igd2hpY2ggSSB1c2UgdGhlIERlYmlhbiBkaXN0cm8uIEkKYW0gYWxz
byB1c2luZyBpdCBvbiBleHRlcm5hbCBIRERzIGFuZCBTU0RzLiBJbiB0aGUgcGFzdCBJIGhhdmUg
YWxzbyBiZWVuCmFkbWluaXN0cmF0b3IgZm9yIGEgZmV3IHdvcmtncm91cCBzZXJ2ZXJzIGF0IG15
IHVuaXZlcnNpdHkgZm9yIGFib3V0IDEwCnllYXJzIGFuZCB0aGVyZSB3ZSBoYXZlIHRyYW5zaXRp
b25lZCBmcm9tIEVYVDIgYW5kIEVYVDMgdG8gSkZTIG9uIExWTSBhdApzb21lIHBvaW50LiBPbmx5
IHJlY2VudGx5IEkgaGF2ZSBzdGFydGVkIHVzaW5nIEJUUkZTIGJlY2F1c2Ugb2YgaXRzCmFkZGl0
aW9uYWwgZmVhdHVyZXMgb24gbXkgbmV3ZXN0IFBDLiBIb3dldmVyLCBJIHdvdWxkIG5vdCBtYWtl
IHRoYXQKdHJhbnNpdGlvbiBvbiBvbGRlciBQQ3Mgd2l0aCBsZXNzIHJlc291cmNlcy4gQW5kIGl0
IGlzIHNvbWUgaGFzc2xlIHRvCmNvbnZlcnQgYWxsIGV4aXN0aW5nIGZpbGVzeXN0ZW1zIHRvIHNv
bWV0aGluZyBlbHNlLgoKSSBjYW5ub3QgcHJvdmlkZSBoYXJkIGZhY3RzIGxpa2UgcGVyZm9ybWFu
Y2Ugb3Igc28gZm9yIHRoZSBkZWNpc2lvbiB0bwp1c2UgSkZTLiBNeSBmaXJzdCBjb250YWN0IHdp
dGggam91cm5hbGluZyBmaWxlIHN5c3RlbXMgaGFkIGJlZW4gb24gYSBmZXcKQUlYICgzLngvNC54
KSBtYWNoaW5lcyBhbmQgbGF0ZXIgb24gd2l0aCBKRlMgb24gT1MvMi4gU28gaGF2aW5nIHN0YXJ0
ZWQKb2ZmIGJhc2VkIG9uIHRoZSBjb2RlIG9mIEpGUyBmb3IgT1MvMiBjZXJ0YWlubHkgY29udHJp
YnV0ZWQgdG8gdGhlCmluaXRpYWwgbGV2ZWwgb2YgdHJ1c3Qgd2hlbiBnaXZpbmcgSkZTIG9uIExp
bnV4IGEgdHJ5IHZlcnN1cyBFWFQ0IGFuZCBpdApkaWRuJ3QgbGV0IG1lIGRvd24uCgpGcm9tIG15
IHBlcnNwZWN0aXZlIGl0IHdvdWxkIGJlIHNhZCBzZWVpbmcgaXQgcmVtb3ZlZCB3aGlsZSBvdGhl
ciBtdWNoCm9sZGVyIGZpbGVzeXN0ZW1zIChvciBvdGhlciBmZWF0dXJlcykgYXJlIHJldGFpbmVk
LiBCdXQgSSBhbHNvIGtub3cgdGhhdAppbiB0aGUgZW5kIGl0IGRlcGVuZHMgb24gdGhlIGNhcGFi
aWxpdHksIGF2YWlsYWJpbGl0eSBhbmQgd2lsbGluZ25lc3Mgb2YKZGV2ZWxvcGVycyB0byBtYWlu
dGFpbiBpdC4gQW5kLCBmcmFua2x5IHNwZWFraW5nLCBJIHJlYWxseSBkbyBub3Qga25vdwpob3cg
bXVjaCBlZmZvcnQgaXQgaXMgdG8ga2VlcCB0aGUgY29kZSBjb21wYXRpYmxlIHRvIG5ldyBrZXJu
ZWwKdmVyc2lvbnMuCgpTbyB0aGlzIGlzIG15IHZvdGUgYWdhaW5zdCBvcnBoYW5pbmcgSkZTLiBJ
IHN0aWxsIHRoaW5rIGl0IGlzIGEgZ29vZApmaWxlc3lzdGVtIGFuZCBjZXJ0YWlubHkgdXNlZnVs
IG9uIHN5c3RlbXMgd2l0aCBsZXNzIHJlc291cmNlcyB3aGVyZSBvbmUKd291bGQgcHJvYmFibHkg
bm90IHVzZSBCVFJGUywgWkZTIG9yIHNvLiBCdXQgd2hhdGV2ZXIgdGhlIGZpbmFsIGRlY2lzaW9u
CndpbGwgYmUsIEkgd291bGQgbGlrZSB0byB0aGFuayB5b3UgYWxsIGZvciBjb250cmlidXRpbmcg
dG8gSkZTIGFuZAprZWVwaW5nIGl0IHJ1bm5pbmcgb3ZlciB0aGUgcGFzdCA+MjAgeWVhcnMuCgpC
ZXN0IHJlZ2FyZHMKU3RlZmFuCgoKT24gU2F0LCBKYW4gMTQsIDIwMjMgYXQgMDU6MDk6MTBBTSAt
MDcwMCwgQW5kcmVhcyBEaWxnZXIgd3JvdGU6Cj4gT24gSmFuIDEzLCAyMDIzLCBhdCAwODoxNSwg
RGF2ZSBLbGVpa2FtcCA8ZGF2ZS5rbGVpa2FtcEBvcmFjbGUuY29tPiB3cm90ZToKPiA+Cj4gPiDv
u79PbiAxLzEzLzIzIDc6MDhBTSwgSGFyYWxkIEFybmVzZW4gd3JvdGU6Cj4gPj4gQ2hyaXN0b3Bo
IEhlbGx3aWcgWzEzLzAxLzIwMjMgMDYuNDJdOgo+ID4+PiBIaSBhbGwsCj4gPj4+Cj4gPj4+IEEg
d2hpbGUgYWdvIHdlJ3ZlIGRlcHJlY2F0ZWQgcmVpc2VyZnMgYW5kIHNjaGVkdWxlZCBpdCBmb3Ig
cmVtb3ZhbC4KPiA+Pj4gTG9va2luZyBpbnRvIHRoZSBoYWlyeSBtZXRhcGFnZSBjb2RlIGluIEpG
UyBJIHdvbmRlciBpZiB3ZSBzaG91bGQgZG8KPiA+Pj4gdGhlIHNhbWUuICBXaGlsZSBKRlMgaXNu
J3QgYW55d2hlcmUgYXMgY29tcGxpY2F0ZWQgYXMgcmVpc2VyZnMsIGl0J3MKPiA+Pj4gYWxzbyB3
YXkgbGVzcyB1c2VkIGFuZCBuZXZlciBtYWRlIGl0IHRvIGJlIHRoZSBkZWZhdWx0IGZpbGUgc3lz
dGVtCj4gPj4+IGluIGFueSBtYWpvciBkaXN0cmlidXRpb24uICBJdCdzIGFsc28gbG9va2luZyBw
cmV0dHkgaG9ycmlibGUgaW4KPiA+Pj4geGZzdGVzdHMsIGFuZCB3aXRoIGFsbCB0aGUgb25nb2lu
ZyBmb2xpbyB3b3JrIGFuZCBob3BlZnVsIGV2ZW50dWFsCj4gPj4+IHBoYXNlb3V0IG9mIGJ1ZmZl
ciBoZWFkIGJhc2VkIEkvTyBwYXRoIGl0J3MgZ29pbmcgdG8gYmUgYSBiaXQgb2YgYSBkcmFnLgo+
ID4+PiAoV2hpY2ggYWxzbyBjYW4gYmUgc2FpZCBmb3IgbWFueSBvdGhlciBmaWxlIHN5c3RlbSwg
bW9zdCBvZiB0aGVtIGJlaW5nCj4gPj4+IGEgYml0IHNpbXBsZXIsIHRob3VnaCkuCj4gPj4gVGhl
IE5vcndlZ2lhbiBJU1AvVFYgcHJvdmlkZXIgdXNlZCB0byBoYXZlIElQVFYtYm94ZXMgd2hpY2gg
aGFkIEpGUyBvbiB0aGUgaGFyZCBkaXNrIHRoYXQgd2FzIHVzZWQgdG8gcmVjb3JkIFRWIHByb2dy
YW1tZXMuCj4gPj4gSG93ZXZlciwgSSBkb24ndCB0aGluayB0aGVzZSBib3hlcyBhcmUgdXNlZCBh
bnltb3JlLgo+ID4KPiA+IEkga25vdyBhdCBvbmUgdGltZSBpdCB3YXMgb25lIG9mIHRoZSByZWNv
bW1lbmRlZCBmaWxlc3lzdGVtcyBmb3IgTXl0aFRWLiBJIGRvbid0IGtub3cgb2YgYW55IG90aGVy
IG1ham9yIHVzZXJzIG9mIEpGUy4gSSBkb24ndCBrbm93IGlmIHRoZXJlIGlzIGFueW9uZSBmYW1p
bGlhciB3aXRoIHRoZSBNeXRoVFYgY29tbXVuaXR5IHRoYXQgY291bGQgd2VpZ2ggaW4uCj4gPgo+
ID4gT2J2aW91c2x5LCBJIGhhdmVuJ3QgcHV0IG11Y2ggZWZmb3J0IGludG8gSkZTIGluIGEgbG9u
ZyB0aW1lIGFuZCBJIHdvdWxkIG5vdCBtaXNzIGl0IGlmIGl0IHdlcmUgdG8gYmUgcmVtb3ZlZC4K
Pgo+IEkndmUgdXNlZCBNeXRoVFYgZm9yIG1hbnkgeWVhcnMgYnV0IGhhdmVuJ3Qgc2VlbiBhbnkg
cGFydGljdWxhciByZWNvbW1lbmRhdGlvbnMgZm9yIEpGUyB0aGVyZS4gTWFpbmx5IGV4dDQgYW5k
IFhGUyBhcmUgdGhlIGNvbW1vbiBmaWxlc3lzdGVtcyB0byBmb2xsb3cgdGhlIG1haW4gZGlzdHJv
cyAoVWJ1bnR1IGluIHBhcnRpY3VsYXIpLgo+Cj4gQ2hlZXJzLCBBbmRyZWFzCj4KPiBfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEpmcy1kaXNjdXNzaW9u
IG1haWxpbmcgbGlzdAo+IEpmcy1kaXNjdXNzaW9uQGxpc3RzLnNvdXJjZWZvcmdlLm5ldAo+IGh0
dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL2pmcy1kaXNjdXNzaW9u
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSmZzLWRp
c2N1c3Npb24gbWFpbGluZyBsaXN0Ckpmcy1kaXNjdXNzaW9uQGxpc3RzLnNvdXJjZWZvcmdlLm5l
dApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9qZnMtZGlzY3Vz
c2lvbgo=
