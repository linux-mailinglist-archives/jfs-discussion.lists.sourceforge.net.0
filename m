Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8815065AC6B
	for <lists+jfs-discussion@lfdr.de>; Mon,  2 Jan 2023 00:03:36 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1pC7MI-00056M-EV;
	Sun, 01 Jan 2023 23:03:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <pali@kernel.org>) id 1pC7M9-000567-64;
 Sun, 01 Jan 2023 23:03:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vTrasrqn+6GdWUHL5UhdqZwD/kayEwmTUKHGj0Sm+BE=; b=YT1TkgbbzFFND6Uv9wGNkuEMqy
 sqIkQSBG+dp0IoV2NKO58ujNoaQtcgIj0RCxF7kSoFuoNG55YlTgbd2dzlUCC+OX8nerBqYROCqLB
 PEoyCdRusbqRwBGxJMTUYVMagLc0N96M/uB2YcJ8LAy8K4W/ACRWS1ClIPKoeOZ0RWq4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=vTrasrqn+6GdWUHL5UhdqZwD/kayEwmTUKHGj0Sm+BE=; b=IhA9FyGhDhpqCe+CYpqD2Sf9nq
 M/dTtENERhIuM33JvZIEGmyCthMO1srHJLwHYpE5NkyS9cwJcvCWlxxqc0KHCqZmO222j3C64hgzJ
 nOcYw7ZILiRGbNV2pANPRIrRRXkJg1q27fUE0KbNiZBFYi7/MI3AvEDZoV9Rjk7fTzyE=;
Received: from ams.source.kernel.org ([145.40.68.75])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pC7M8-0008MS-8Z; Sun, 01 Jan 2023 23:03:05 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id EC4D5B80B52;
 Sun,  1 Jan 2023 23:02:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 64FFDC433EF;
 Sun,  1 Jan 2023 23:02:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1672614176;
 bh=+APP+2lLo3YrbHdKAcC0k1slJXQMh+w4XYkOq5/C1X4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=CWMwgUweTkeHMK8dctc9B+xEl3YOh4W7RtjJJmB2WK61ive8fBmz5b4hbLBCoOsyR
 abr0bR9SPGNsvphP3wElRI0rYsIwU25VzSXtdsli5N0hDzLYDH9zPAaqfaFvpSI9Nf
 RLPtSOc3eaYgaLnxh2fSquwoubmmrs8Z684b5M7pLCc9t4fiapsbDzmCyEyy9oLBNY
 9Iv2gIVaH3dQa7g9X1MCHWyPRSB9uGHKmHhcrJVLwm8fCXUN9BUZ3AMDVCLjv1omXg
 eeIJ7gpPcuQ1FNvrmoooKY34E4GWir7PEegHAoU1vmzhfDONozwujueB1qE/+uXGdu
 wwDn88iFMnbFw==
Received: by pali.im (Postfix)
 id 5B302884; Mon,  2 Jan 2023 00:02:53 +0100 (CET)
Date: Mon, 2 Jan 2023 00:02:53 +0100
From: Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
To: Kari Argillander <kari.argillander@gmail.com>
Message-ID: <20230101230253.qhhku7d42kyrbkst@pali>
References: <20221226142150.13324-1-pali@kernel.org>
 <20221226142150.13324-4-pali@kernel.org>
 <CAC=eVgS7weRq7S16MpTyx9eZm=2s+OZhm6Ko75Z6bmjsHH-7Yw@mail.gmail.com>
 <20230101190605.s7jyf3umgubwrk3i@pali>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230101190605.s7jyf3umgubwrk3i@pali>
User-Agent: NeoMutt/20180716
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Sunday 01 January 2023 20:06:05 Pali Rohár wrote: > On
    Sunday 01 January 2023 21:02:46 Kari Argillander wrote: > > 26.12.2022 klo
    16.22 Pali Rohár (pali@kernel.org) wrote: > > > > > > Other fs dr [...] 
 
 Content analysis details:   (-5.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
                             high trust
                             [145.40.68.75 listed in list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1pC7M8-0008MS-8Z
Subject: Re: [Jfs-discussion] [RFC PATCH v2 03/18] ntfs: Undeprecate
 iocharset= mount option
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
Cc: Dave Kleikamp <shaggy@kernel.org>, jfs-discussion@lists.sourceforge.net,
 Jan Kara <jack@suse.cz>, Pavel Machek <pavel@ucw.cz>,
 linux-cifs@vger.kernel.org, Christoph Hellwig <hch@infradead.org>,
 Anton Altaparmakov <anton@tuxera.com>, Salah Triki <salah.triki@gmail.com>,
 Shyam Prasad N <sprasad@microsoft.com>, Tom Talpey <tom@talpey.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>,
 "Theodore Y . Ts'o" <tytso@mit.edu>, Luis de Bethencourt <luisbg@kernel.org>,
 linux-ntfs-dev@lists.sourceforge.net, Paulo Alcantara <pc@cjr.nz>,
 linux-kernel@vger.kernel.org, Ronnie Sahlberg <lsahlber@redhat.com>,
 Steve French <sfrench@samba.org>, linux-fsdevel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

T24gU3VuZGF5IDAxIEphbnVhcnkgMjAyMyAyMDowNjowNSBQYWxpIFJvaMOhciB3cm90ZToKPiBP
biBTdW5kYXkgMDEgSmFudWFyeSAyMDIzIDIxOjAyOjQ2IEthcmkgQXJnaWxsYW5kZXIgd3JvdGU6
Cj4gPiAyNi4xMi4yMDIyIGtsbyAxNi4yMiBQYWxpIFJvaMOhciAocGFsaUBrZXJuZWwub3JnKSB3
cm90ZToKPiA+ID4KPiA+ID4gT3RoZXIgZnMgZHJpdmVycyBhcmUgdXNpbmcgaW9jaGFyc2V0PSBt
b3VudCBvcHRpb24gZm9yIHNwZWNpZnlpbmcgY2hhcnNldC4KPiA+ID4gU28gbWFyayBpb2NoYXJz
ZXQ9IG1vdW50IG9wdGlvbiBhcyBwcmVmZXJyZWQgYW5kIGRlcHJlY2F0ZSBubHM9IG1vdW50Cj4g
PiA+IG9wdGlvbi4KPiA+IAo+ID4gc25pcC4KPiA+IAo+ID4gPiBkaWZmIC0tZ2l0IGEvZnMvbnRm
cy9zdXBlci5jIGIvZnMvbnRmcy9zdXBlci5jCj4gPiAKPiA+IHNuaXAuCj4gPiAKPiA+ID4gQEAg
LTIxOCwxMCArMjEzLDEwIEBAIHN0YXRpYyBib29sIHBhcnNlX29wdGlvbnMobnRmc192b2x1bWUg
KnZvbCwgY2hhciAqb3B0KQo+ID4gPiAgICAgICAgICAgICAgICAgfSBlbHNlIGlmICghc3RyY21w
KHAsICJ1dGY4IikpIHsKPiA+ID4gICAgICAgICAgICAgICAgICAgICAgICAgYm9vbCB2YWwgPSBm
YWxzZTsKPiA+ID4gICAgICAgICAgICAgICAgICAgICAgICAgbnRmc193YXJuaW5nKHZvbC0+c2Is
ICJPcHRpb24gdXRmOCBpcyBubyBsb25nZXIgIgo+ID4gPiAtICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICJzdXBwb3J0ZWQsIHVzaW5nIG9wdGlvbiBubHM9dXRmOC4gUGxlYXNlICIK
PiA+ID4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAidXNlIG9wdGlvbiBubHM9
dXRmOCBpbiB0aGUgZnV0dXJlIGFuZCAiCj4gPiA+IC0gICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIm1ha2Ugc3VyZSB1dGY4IGlzIGNvbXBpbGVkIGVpdGhlciBhcyBhICIKPiA+ID4g
LSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAibW9kdWxlIG9yIGludG8gdGhlIGtl
cm5lbC4iKTsKPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAic3VwcG9y
dGVkLCB1c2luZyBvcHRpb24gaW9jaGFyc2V0PXV0ZjguICIKPiA+ID4gKyAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAiUGxlYXNlIHVzZSBvcHRpb24gaW9jaGFyc2V0PXV0ZjggaW4g
dGhlICIKPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAiZnV0dXJlIGFu
ZCBtYWtlIHN1cmUgdXRmOCBpcyBjb21waWxlZCAiCj4gPiA+ICsgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgImVpdGhlciBhcyBhIG1vZHVsZSBvciBpbnRvIHRoZSBrZXJuZWwuIik7
Cj4gPiAKPiA+IFdlIGRvIG5vdCBoYXZlIHRvIG1ha2Ugc3VyZSB1dGY4IGlzIGNvbXBpbGVkIGFu
eW1vcmUgYXMgaXQgImFsd2F5cyBpcyIgcmlnaHQ/Cj4gCj4gWWVzLCByaWdodCwgd2UgaGF2ZSBh
bHdheXMgdXRmOCBzdXBwb3J0IGNvbXBpbGVkLWluLgo+IFNlY29uZCBwYXJ0IG9mIHRoYXQgd2Fy
bmluZyBtZXNzYWdlIHNob3VsZCBiZSBkcm9wcGVkLgoKT2ssIHRoaXMgaXMgdHJ1dGggYWZ0ZXIg
cGF0Y2ggMTUvMTguIFNvIGluZm8gYWJvdXQgY29tcGlsZWQgbW9kdWxlCnNob3VsZCBiZSBkcm9w
cGVkIGluIHBhdGNoIDE1LzE4LCBub3QgaW4gdGhpcyBvbmUuCgo+ID4gPiAgICAgICAgICAgICAg
ICAgICAgICAgICBpZiAoIXYgfHwgISp2KQo+ID4gPiAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIHZhbCA9IHRydWU7Cj4gPiA+ICAgICAgICAgICAgICAgICAgICAgICAgIGVsc2UgaWYg
KCFzaW1wbGVfZ2V0Ym9vbCh2LCAmdmFsKSkKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpKZnMtZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKSmZzLWRpc2N1
c3Npb25AbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0
L2xpc3RzL2xpc3RpbmZvL2pmcy1kaXNjdXNzaW9uCg==
