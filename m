Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 92BD63EC875
	for <lists+jfs-discussion@lfdr.de>; Sun, 15 Aug 2021 11:52:34 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1mFCoQ-0003gd-2j; Sun, 15 Aug 2021 09:52:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <pali@kernel.org>)
 id 1mFCoO-0003Uc-V5; Sun, 15 Aug 2021 09:52:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Cyw/X3qMacB8los9HJhEiYoWaOFiJMVWfBFH5CfSTdo=; b=lUOw7FvZeRm1ZsE5bxA7NE027D
 9EZSNayJ/vVNxYIKHm4iBhlZc5UmwLaHH9NgtKWwNJUu70ffgwvJuEYAsxPRp1q4KOuZKEFAEb5PX
 uQnNO294dB4KA4WSOiQVY7msJa+/dghC4kMNAPbppPG/nnOHb17mulVGkikafe6Y5QLc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Cyw/X3qMacB8los9HJhEiYoWaOFiJMVWfBFH5CfSTdo=; b=k2DL+DmawAp/hsTnJ6ikuC9KWj
 1wxkMcuWNnW2JRvQJ86Lb1UgPgaTnKxN0A497O6aaYvBe7q4J45IlglC5QI81pcxtQDsW1SE9/P2S
 HfN+fvNrVs9q6l5ra0DYfs/v4ajccfGTJymslOt4MwcWxGzJaVjh3pQSlWzKrxuwKVds=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mFCf8-0004Xv-6r; Sun, 15 Aug 2021 09:42:40 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id BA0F860295;
 Sun, 15 Aug 2021 09:42:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1629020547;
 bh=GSfHvZE/Q+UBpMvO/QW4NWjmTbLIJVvGzR58O4IoWVo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=HhBuMmVMJ3oXH0dzUi0Fuy5CdwP6wfFidET79td5sbgoRkXMXjjTToVpC+PsCW8x9
 Yr6MfwdVkHjQozyWXN1s2T5M89VkdTfrVoKEMKFEmiR0PWHNhlY29Lv58QqLWd5tE8
 QZC/iZctxtu5UVFMQ39lb2ttM0+NOsGxEqPWCIh91pdzLrXUXvDux9ShB6C+0SvXwd
 mBIuhtvlw7EF/9AxhSmVA0QA3mtM+3oR8sAWW9XGiIQ3mZ0vEd9tgTIVcV0Yqn4w4c
 gQXFz7pXE/ZcrMV5c+/QfD7KzDhJGAtMw55xytvJf4QBX3Ar7vUKlLCRfSe75hvz60
 U32qpiamU50zA==
Received: by pali.im (Postfix)
 id C887C98C; Sun, 15 Aug 2021 11:42:24 +0200 (CEST)
Date: Sun, 15 Aug 2021 11:42:24 +0200
From: Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
To: OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>
Message-ID: <20210815094224.dswbjywnhvajvzjv@pali>
References: <20210808162453.1653-1-pali@kernel.org>
 <20210808162453.1653-2-pali@kernel.org>
 <87h7frtlu0.fsf@mail.parknet.co.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87h7frtlu0.fsf@mail.parknet.co.jp>
User-Agent: NeoMutt/20180716
X-Spam-Score: -0.8 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: parknet.co.jp]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1mFCf8-0004Xv-6r
Subject: Re: [Jfs-discussion] [RFC PATCH 01/20] fat: Fix iocharset=utf8
 mount option
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
Cc: linux-cifs@vger.kernel.org, jfs-discussion@lists.sourceforge.net,
 Jan Kara <jack@suse.cz>, Luis de Bethencourt <luisbg@kernel.org>,
 Dave Kleikamp <shaggy@kernel.org>, linux-ntfs-dev@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, Marek =?utf-8?B?QmVow7pu?= <marek.behun@nic.cz>,
 Christoph Hellwig <hch@infradead.org>,
 Alexander Viro <viro@zeniv.linux.org.uk>, Pavel Machek <pavel@ucw.cz>,
 linux-fsdevel@vger.kernel.org, "Theodore Y . Ts'o" <tytso@mit.edu>,
 Andrew Morton <akpm@linux-foundation.org>, Salah Triki <salah.triki@gmail.com>,
 Anton Altaparmakov <anton@tuxera.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

T24gU3VuZGF5IDE1IEF1Z3VzdCAyMDIxIDEyOjQyOjQ3IE9HQVdBIEhpcm9mdW1pIHdyb3RlOgo+
IFBhbGkgUm9ow6FyIDxwYWxpQGtlcm5lbC5vcmc+IHdyaXRlczoKPiAKPiA+IEN1cnJlbnRseSBp
b2NoYXJzZXQ9dXRmOCBtb3VudCBvcHRpb24gaXMgYnJva2VuIGFuZCBlcnJvciBpcyBwcmludGVk
IHRvCj4gPiBkbWVzZyB3aGVuIGl0IGlzIHVzZWQuIFRvIHVzZSBVVEYtOCBhcyBpb2NoYXJzZXQs
IGl0IGlzIHJlcXVpcmVkIHRvIHVzZQo+ID4gdXRmOD0xIG1vdW50IG9wdGlvbi4KPiA+Cj4gPiBG
aXggaW9jaGFyc2V0PXV0ZjggbW91bnQgb3B0aW9uIHRvIHVzZSBiZSBlcXVpdmFsZW50IHRvIHRo
ZSB1dGY4PTEgbW91bnQKPiA+IG9wdGlvbiBhbmQgcmVtb3ZlIHByaW50aW5nIGVycm9yIGZyb20g
ZG1lc2cuCj4gCj4gVGhpcyBjaGFuZ2UgaXMgbm90IGVxdWl2YWxlbnQgdG8gdXRmOD0xLiBJbiB0
aGUgY2FzZSBvZiB1dGY4PTEsIHZmYXQKPiB1c2VzIGlvY2hhcnNldCdzIGNvbnZlcnNpb24gdGFi
bGUgYW5kIGl0IGNhbiBoYW5kbGUgbW9yZSB0aGFuIGFzY2lpLgo+IAo+IFNvIHRoaXMgcGF0Y2gg
aXMgaW5jb21wYXRpYmxlIGNoYW5nZXMsIGFuZCBoYW5kbGVzIGxlc3MgY2hhcnMgdGhhbgo+IHV0
Zjg9MS4gU28gSSB0aGluayB0aGlzIGlzIGNsZWFuIHRob3VnaCwgYnV0IHRoaXMgd291bGQgYmUg
cmVncmVzc2lvbgo+IGZvciB1c2VyIG9mIHV0Zjg9MS4KCkkgZG8gbm90IHRoaW5rIHNvLi4uIEJ1
dCBwbGVhc2UgY29ycmVjdCBtZSwgYXMgdGhpcyBjb2RlIGFyb3VuZCBpcyBtZXNzLgoKV2l0aG91
dCB0aGlzIGNoYW5nZSB3aGVuIHV0Zjg9MSBpcyBzZXQgdGhlbiBpb2NoYXJzZXQ9IGVuY29kaW5n
IGlzIHVzZWQKZm9yIGNhc2UtaW5zZW5zaXRpdml0eSBpbXBsZW1lbnRhdGlvbiAodG91cHBlciAv
IHRvbG93ZXIgY29udmVyc2lvbikuCkZvciBhbGwgb3RoZXIgcGFydHMgYXJlIHVzZSBjb3JyZWN0
IHV0ZjgqIGNvbnZlcnNpb24gZnVuY3Rpb25zLgoKQnV0IHlvdSB1c2UgdG91cHBwZXIgLyB0b2xv
d2VyIGZ1bmN0aW9ucyBmcm9tIGlvY2hhcnNldD0gZW5jb2Rpbmcgb24Kc3RyZWFtIG9mIHV0Zjgg
Ynl0ZXMgdGhlbiB5b3UgZWl0aGVyIGdldCBpZGVudGl0eSBvciBzb21lIHVucHJlZGljdGFibGUK
Z2FyYmFnZSBpbiB1dGY4LiBTbyB3aGVuIGNvbXBhcmluZyB0d28gKGRpZmZlcmVudCkgbm9uLUFT
Q0lJIGZpbGVuYW1lcwp2aWEgdGhpcyBtZXRob2QgeW91IGluIG1vc3QgY2FzZXMgZ2V0IHRoYXQg
ZmlsZW5hbWVzIGFyZSBkaWZmZXJlbnQuCkJlY2F1c2UgY29udmVydGluZyB0aGVpciB1dGY4IGJ5
dGVzIHZpYSB0b3VwcGVyIC8gdG9sb3dlciBmdW5jdGlvbnMgZnJvbQppb2NoYXJzZXQ9IGVuY29k
aW5nIHJlc3VsdHMgaW4gdHdvIGRpZmZlcmVudCBieXRlIHNlcXVlbmNlcyBpbiBtb3N0CmNhc2Vz
LiBFdmVuIGZvciB0d28gdXRmOCBjYXNlLWluc2Vuc2l0aXZlIHNhbWUgc3RyaW5ncy4KCkJ1dCB5
b3UgY2FuIHBsYXkgd2l0aCBpdCBhbmQgSSBndWVzcyBpdCBpcyBwb3NzaWJsZSB0byBmaW5kIHR3
bwpkaWZmZXJlbnQgdXRmOCBzdHJpbmdzIHdoaWNoIGFmdGVyIHRvdXBwZXIgLyB0b2xvd2VyIGNv
bnZlcnNpb24gZnJvbQpzb21lIGlvY2hhcnNldD0gZW5jb2Rpbmcgd291bGQgbGVhZCB0byBzYW1l
IGJ5dGUgc2VxdWVuY2UuCgpUaGlzIHBhdGNoIHVzZXMgZm9yIHV0ZjggdG9sb3dlciAvIHRvdXBw
c2VyIGZ1bmN0aW9uIHNpbXBsZSA3LWJpdAp0b2xvd2VyIC8gdG91cHBlciBhc2NpaSBmdW5jdGlv
bi4gQW5kIHNvIGZvciA3LWJpdCBhc2NpaSBmaWxlIG5hbWVzCnRoZXJlIGlzIG5vIGNoYW5nZS4K
ClNvIHRoaXMgcGF0Y2ggY2hhbmdlcyBiZWhhdmlvciB3aGVuIGNvbXBhcmluZyBub24gNy1iaXQg
YXNjaWkgZmlsZQpuYW1lcywgYnV0IG9ubHkgaW4gY2FzZXMgd2hlbiBwcmV2aW91c2x5IHR3byBk
aWZmZXJlbnQgZmlsZSBuYW1lcyB3ZXJlCm1hcmtlZCBhcyBzYW1lLiBBcyBub3cgdGhleSBhcmUg
bWFya2VkIGNvcnJlY3RseSBhcyBkaWZmZXJlbnQuIFNvIHRoaXMKaXMgY2hhbmdlZCBiZWhhdmlv
ciwgYnV0IEkgZ3Vlc3MgaXQgaXMgYnVnIGZpeCB3aGljaCBpcyBuZWVkZWQuCklmIHlvdSB3YW50
IEkgY2FuIHB1dCB0aGlzIGNoYW5nZSBpbnRvIHNlcGFyYXRlIHBhdGNoLgoKSXNzdWUgdGhhdCB0
d28gY2FzZS1pbnNlbnNpdGl2ZSBzYW1lIGZpbGVzIGFyZSBtYXJrZWQgYXMgZGlmZmVyZW50IGlz
Cm5vdCBjaGFuZ2VkIGJ5IHRoaXMgcGF0Y2ggYW5kIHRoZXJlZm9yZSB0aGlzIGlzc3VlIHN0YXkg
aGVyZS4KCj4gVGhhbmtzLgo+IC0tIAo+IE9HQVdBIEhpcm9mdW1pIDxoaXJvZnVtaUBtYWlsLnBh
cmtuZXQuY28uanA+CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSmZzLWRpc2N1c3Npb24gbWFpbGluZyBsaXN0Ckpmcy1kaXNjdXNzaW9uQGxpc3RzLnNv
dXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5m
by9qZnMtZGlzY3Vzc2lvbgo=
