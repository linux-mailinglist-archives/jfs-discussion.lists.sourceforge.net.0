Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DD2E3E4B1F
	for <lists+jfs-discussion@lfdr.de>; Mon,  9 Aug 2021 19:48:23 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1mD9Na-00007P-LR; Mon, 09 Aug 2021 17:48:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <pali@kernel.org>)
 id 1mD9NY-000073-Kj; Mon, 09 Aug 2021 17:48:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=igh93BzOn4ifUF81NuzsxpDW3CXTu4nJhkhrAM1UHj4=; b=XZf+70dZT6ITpvRmr3JCoGTJsX
 BvLJMWSqSRZm/A7FHratqyBErj+xZqlUx4tvetsVfNB4GAIXrUZNhcvN77RxMipQ8lD63F0be3vsz
 XoeXnlllmzFczVYv/b0Xf3GE2MVSrSuyTOGywZMolFpCQY5nsX5EPnE67x6w8aWhoPhk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=igh93BzOn4ifUF81NuzsxpDW3CXTu4nJhkhrAM1UHj4=; b=d1GeLqKFjQQdMxj6cip15ukg7h
 TkoKpeh/jc/wWHHK/dgG8VaWCY6nMoPYySNKGDGCe2+oBCBTyBn2lNdKGWjnBShPTlWYQYzxL3f/L
 PMPECGi/QHPChNo1jsM4Sd4dN4lff1PxvwMGvhqkY6JAMSKBN/XeV8nVlOAFXOyEMT6Q=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mD9NQ-000rDS-EU; Mon, 09 Aug 2021 17:48:00 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 494F960F25;
 Mon,  9 Aug 2021 17:47:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1628531264;
 bh=/FzF4AX925VDrkN29pMet/SxwvAOYr7kHqZbB1ZleVs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=o9ciE2Yankh6D9q5DwKQ3DzDVkkVquO3EdP/FHdqRHOd1fkIm3A+ST2OwIrrfulfy
 3wC8MIN2AEvGiz8h1lXpYuw7XJVCS55Dr/EC9VvmuxURex858mhjJetQBp/Y6uVgFv
 dKCuLAG1WlNvfsRzwR1wWREwjzcDJHQuxRSiDexp01/24scKD500LJWlAyU0qh0WZ8
 Qj1+NQtTiLSWB5tKCdrgD23W6lMhiEcUxUSHKnVNzJZlu+3gApUdPOdkgwMFERJ8+q
 Se++ZoKZg/xE3wIVbMTEc1fdpnWXII0aGLnAhn8+LCudGPWhxk6EiXOZbOM07sck1T
 PZPlv55ROfwLw==
Received: by pali.im (Postfix)
 id E4EC4C7C; Mon,  9 Aug 2021 19:47:41 +0200 (CEST)
Date: Mon, 9 Aug 2021 19:47:41 +0200
From: Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
To: Matthew Wilcox <willy@infradead.org>
Message-ID: <20210809174741.4wont2drya3rvpsr@pali>
References: <20210808162453.1653-1-pali@kernel.org>
 <20210808162453.1653-12-pali@kernel.org>
 <D0302F93-BAE5-48F0-87D0-B68B10D7757B@dubeyko.com>
 <YRFnz6kn1UbSCN/S@casper.infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YRFnz6kn1UbSCN/S@casper.infradead.org>
User-Agent: NeoMutt/20180716
X-Spam-Score: -0.8 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1mD9NQ-000rDS-EU
Subject: Re: [Jfs-discussion] [RFC PATCH 11/20] hfs: Explicitly set
 hsb->nls_disk when hsb->nls_io is set
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
 LKML <linux-kernel@vger.kernel.org>, Anton Altaparmakov <anton@tuxera.com>,
 Christoph Hellwig <hch@infradead.org>,
 Alexander Viro <viro@zeniv.linux.org.uk>, Pavel Machek <pavel@ucw.cz>,
 Linux FS Devel <linux-fsdevel@vger.kernel.org>,
 "Theodore Y . Ts'o" <tytso@mit.edu>, Andrew Morton <akpm@linux-foundation.org>,
 Marek =?utf-8?B?QmVow7pu?= <marek.behun@nic.cz>,
 Salah Triki <salah.triki@gmail.com>,
 OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

T24gTW9uZGF5IDA5IEF1Z3VzdCAyMDIxIDE4OjM3OjE5IE1hdHRoZXcgV2lsY294IHdyb3RlOgo+
IE9uIE1vbiwgQXVnIDA5LCAyMDIxIGF0IDEwOjMxOjU1QU0gLTA3MDAsIFZpYWNoZXNsYXYgRHVi
ZXlrbyB3cm90ZToKPiA+ID4gT24gQXVnIDgsIDIwMjEsIGF0IDk6MjQgQU0sIFBhbGkgUm9ow6Fy
IDxwYWxpQGtlcm5lbC5vcmc+IHdyb3RlOgo+ID4gPiAKPiA+ID4gSXQgZG9lcyBub3QgbWFrZSBh
bnkgc2Vuc2UgdG8gc2V0IGhzYi0+bmxzX2lvIChOTFMgaW9jaGFyc2V0IHVzZWQgYmV0d2Vlbgo+
ID4gPiBWRlMgYW5kIGhmcyBkcml2ZXIpIHdoZW4gaHNiLT5ubHNfZGlzayAoTkxTIGNvZGVwYWdl
IHVzZWQgYmV0d2VlbiBoZnMKPiA+ID4gZHJpdmVyIGFuZCBkaXNrKSBpcyBub3Qgc2V0Lgo+ID4g
PiAKPiA+ID4gUmV2ZXJzZSBlbmdpbmVlcmluZyBkcml2ZXIgY29kZSBzaG93biB3aGF0IGlzIGRv
aW5nIGluIHRoaXMgc3BlY2lhbCBjYXNlOgo+ID4gPiAKPiA+ID4gICAgV2hlbiBjb2RlcGFnZSB3
YXMgbm90IGRlZmluZWQgYnV0IGlvY2hhcnNldCB3YXMgdGhlbgo+ID4gPiAgICBoZnMgZHJpdmVy
IGNvcGllZCA4Yml0IGNoYXJhY3RlciBmcm9tIGRpc2sgZGlyZWN0bHkgdG8KPiA+ID4gICAgMTZi
aXQgdW5pY29kZSB3Y2hhcl90IHR5cGUuIFdoaWNoIG1lYW5zIGl0IGRpZCBjb252ZXJzaW9uCj4g
PiA+ICAgIGZyb20gTGF0aW4xIChJU08tODg1OS0xKSB0byBVbmljb2RlIGJlY2F1c2UgZmlyc3Qg
MjU2Cj4gPiA+ICAgIFVuaWNvZGUgY29kZSBwb2ludHMgbWF0Y2hlcyA4Yml0IElTTy04ODU5LTEg
Y29kZXBhZ2UgdGFibGUuCj4gPiA+ICAgIFNvIHdoZW4gaW9jaGFyc2V0IHdhcyBzcGVjaWZpZWQg
YW5kIGNvZGVwYWdlIG5vdCwgdGhlbgo+ID4gPiAgICBjb2RlcGFnZSB1c2VkIGltcGxpY2l0IHZh
bHVlICJpc284ODU5LTEiLgo+ID4gPiAKPiA+ID4gU28gd2hlbiBoc2ItPm5sc19kaXNrIGlzIG5v
dCBzZXQgYW5kIGhzYi0+bmxzX2lvIGlzIHRoZW4gZXhwbGljaXRseSBzZXQKPiA+ID4gaHNiLT5u
bHNfZGlzayB0byAiaXNvODg1OS0xIi4KPiA+ID4gCj4gPiA+IFN1Y2ggc2V0dXAgaXMgb2J2aW91
c2x5IGluY29tcGF0aWJsZSB3aXRoIE1hYyBPUyBzeXN0ZW1zIGFzIHRoZXkgZG8gbm90Cj4gPiA+
IHN1cHBvcnQgaXNvODg1OS0xIGVuY29kaW5nIGZvciBoZnMuIFNvIHByaW50IHdhcm5pbmcgaW50
byBkbWVzZyBhYm91dCB0aGlzCj4gPiA+IGZhY3QuCj4gPiA+IAo+ID4gPiBBZnRlciB0aGlzIGNo
YW5nZSBoc2ItPm5sc19kaXNrIGlzIGFsd2F5cyBzZXQsIHNvIHJlbW92ZSBjb2RlIHBhdGhzIGZv
cgo+ID4gPiBjYXNlIHdoZW4gaHNiLT5ubHNfZGlzayB3YXMgbm90IHNldCBhcyB0aGV5IGFyZSBu
b3QgbmVlZGVkIGFueW1vcmUuCj4gPiAKPiA+IAo+ID4gU291bmRzIHJlYXNvbmFibGUuIEJ1dCBp
dCB3aWxsIGJlIGdyZWF0IHRvIGtub3cgdGhhdCB0aGUgY2hhbmdlIGhhcyBiZWVuIHRlc3RlZCBy
ZWFzb25hYmx5IHdlbGwuCj4gCj4gSSBkb24ndCB0aGluayBpdCdzIHJlYXNvbmFibGUgdG8gYXNr
IFBhbGkgdG8gdGVzdCBldmVyeSBzaW5nbGUgZmlsZXN5c3RlbS4KPiBUaGF0J3Mgc29tZXRoaW5n
IHRoZSBtYWludGFpbmVyIHNob3VsZCBkbywgYXMgeW91J3JlIG1vcmUgbGlrZWx5IHRvIGhhdmUK
PiB0aGUgaW5mcmFzdHJ1Y3R1cmUgYWxyZWFkeSBzZXQgdXAgdG8gZG8gdGVzdGluZyBvZiB5b3Vy
IGZpbGVzeXN0ZW0gYW5kCj4gYmUgYXdhcmUgb2YgZnVuIGNvcm5lciBjYXNlcyBhbmQgdXNlIGNh
c2VzIHRoYW4gc29tZW9uZSB3aG8ncyB3b3JraW5nCj4gYWNyb3NzIGFsbCBmaWxlc3lzdGVtcy4K
ClRoaXMgcGF0Y2ggc2VyaWVzIGlzIGN1cnJlbnRseSBpbiBSRkMgZm9ybSwgYXMgc3RhdGVkIGlu
IGNvdmVyIGxldHRlcgptb3N0bHkgdW50ZXN0ZWQuIFNvIHRoZXkgYXJlIG5vdCBpbiBmb3JtIGZv
ciBtZXJnaW5nIG9yIGRldGFpbGVkCnJldmlld2luZy4gSSBqdXN0IHdvdWxkIGxpa2UgdG8ga25v
dyBpZiB0aGlzIGlzIHRoZSByaWdodCBkaXJlY3Rpb24gd2l0aApmaWxlc3lzdGVtcyBhbmQgaWYg
SSBzaG91bGQgY29udGludWUgd2l0aCB0aGlzIG15IGVmZm9ydCBvciBub3QuCkFuZCBJIHRob3Vn
aHQgdGhhdCBzZW5kaW5nIFJGQyAiaW5jb21wbGV0ZSIgcGF0Y2hlcyBpcyBiZXR0ZXIgd2F5IHRo
YW4KanVzdCBkZXNjcmliaW5nIHdoYXQgdG8gZG8gYW5kIGhvdy4uLgoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkpmcy1kaXNjdXNzaW9uIG1haWxpbmcg
bGlzdApKZnMtZGlzY3Vzc2lvbkBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5z
b3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vamZzLWRpc2N1c3Npb24K
