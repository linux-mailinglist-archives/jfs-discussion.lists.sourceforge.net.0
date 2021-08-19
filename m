Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 018673F1542
	for <lists+jfs-discussion@lfdr.de>; Thu, 19 Aug 2021 10:34:56 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1mGdVb-00052H-OX; Thu, 19 Aug 2021 08:34:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <pali@kernel.org>)
 id 1mGdVZ-00051q-PB; Thu, 19 Aug 2021 08:34:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xgmltjgbIOCgt4H7FK6Bo6yQe3JLjTPro8hWmkuo8JM=; b=hp4HpXIX5QgCw/ySUtTHjs9xO+
 GH0JLXfgUvJ/8cb8JxCguXHjccs7Pwv70648qfkUmLRX4xC23VPgFHn6NSztj4WDc/wdhN4hAmIHk
 4LtLyp9Xqvudn9X4cebgZMpN+94mSoQ20kHd1zk/e0jZheGgKfcjxxmbKGHcomVn7SNE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=xgmltjgbIOCgt4H7FK6Bo6yQe3JLjTPro8hWmkuo8JM=; b=Zgrtc3q3g/BSI8ncpViUoRCAQ7
 pITxHrmL1cLETyMo596B/kSQdI15QT87wazcvuM7h1o/Ho6THvdlfEFmqDmobN/5lcrxruFfITulV
 LoBIJBtPOgeHdoWxZjFBS+5S9p4EpUrw4+W1flBF90XwioUpP3Ce41+glLpBs2OLZQHs=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mGdVY-0001vY-4Q; Thu, 19 Aug 2021 08:34:41 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 896D1610FA;
 Thu, 19 Aug 2021 08:34:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1629362074;
 bh=Bd2L1bF1i5ySeLJ979rjOA+eVsO+A3AVVXhjsHT7yGQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=XbZFir7iCQmB49KMFmSrAaS5/1hj+ReN+h9w4sj8ze/4hYuraavS71ss+lp4A80iU
 At1TEW+wYevB3cmLh/neU1KFlyLVpt2aS8RHAUOVbgb1BUCE3ua2zhTB2eT7KrRyNf
 AoA8gCV8ywtLsOyJE/dXp+8CoMIjcLplvazqy72vzKjA1GJKv+51E/KoN40z14uy7f
 +oO0DKJCIrDRyn5hnYfqfj/K70DJQd/jwnkek1INKgV/aA8t4Af92aNMu7iEfhNoPv
 wc/FOH7kxBCTpa1TlmYwD7fz6aN04hx33KGrs+N8D6eKftBVNafYBb7SQ/C5H6EcvN
 o240Z2pI38mww==
Received: by pali.im (Postfix)
 id 365367EA; Thu, 19 Aug 2021 10:34:32 +0200 (CEST)
Date: Thu, 19 Aug 2021 10:34:32 +0200
From: Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
To: Jan Kara <jack@suse.cz>
Message-ID: <20210819083432.yy36hrbxzmbasvwd@pali>
References: <20210808162453.1653-1-pali@kernel.org>
 <20210808162453.1653-4-pali@kernel.org>
 <20210812141736.GE14675@quack2.suse.cz>
 <20210812155134.g67ncugjvruos3cy@pali>
 <20210813134822.GF11955@quack2.suse.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210813134822.GF11955@quack2.suse.cz>
User-Agent: NeoMutt/20180716
X-Spam-Score: -0.8 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: suse.cz]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mGdVY-0001vY-4Q
Subject: Re: [Jfs-discussion] [RFC PATCH 03/20] udf: Fix iocharset=utf8
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
 "Theodore Y . Ts'o" <tytso@mit.edu>, Luis de Bethencourt <luisbg@kernel.org>,
 Dave Kleikamp <shaggy@kernel.org>, linux-ntfs-dev@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, Anton Altaparmakov <anton@tuxera.com>,
 Christoph Hellwig <hch@infradead.org>,
 Alexander Viro <viro@zeniv.linux.org.uk>, Pavel Machek <pavel@ucw.cz>,
 linux-fsdevel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 Marek =?utf-8?B?QmVow7pu?= <marek.behun@nic.cz>,
 Salah Triki <salah.triki@gmail.com>,
 OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

T24gRnJpZGF5IDEzIEF1Z3VzdCAyMDIxIDE1OjQ4OjIyIEphbiBLYXJhIHdyb3RlOgo+IE9uIFRo
dSAxMi0wOC0yMSAxNzo1MTozNCwgUGFsaSBSb2jDoXIgd3JvdGU6Cj4gPiBPbiBUaHVyc2RheSAx
MiBBdWd1c3QgMjAyMSAxNjoxNzozNiBKYW4gS2FyYSB3cm90ZToKPiA+ID4gT24gU3VuIDA4LTA4
LTIxIDE4OjI0OjM2LCBQYWxpIFJvaMOhciB3cm90ZToKPiA+ID4gPiBDdXJyZW50bHkgaW9jaGFy
c2V0PXV0ZjggbW91bnQgb3B0aW9uIGlzIGJyb2tlbi4gVG8gdXNlIFVURi04IGFzIGlvY2hhcnNl
dCwKPiA+ID4gPiBpdCBpcyByZXF1aXJlZCB0byB1c2UgdXRmOCBtb3VudCBvcHRpb24uCj4gPiA+
ID4gCj4gPiA+ID4gRml4IGlvY2hhcnNldD11dGY4IG1vdW50IG9wdGlvbiB0byB1c2UgYmUgZXF1
aXZhbGVudCB0byB0aGUgdXRmOCBtb3VudAo+ID4gPiA+IG9wdGlvbi4KPiA+ID4gPiAKPiA+ID4g
PiBJZiBVVEYtOCBhcyBpb2NoYXJzZXQgaXMgdXNlZCB0aGVuIHNfbmxzX21hcCBpcyBzZXQgdG8g
TlVMTC4gU28gc2ltcGxpZnkKPiA+ID4gPiBjb2RlIGFyb3VuZCwgcmVtb3ZlIFVERl9GTEFHX05M
U19NQVAgYW5kIFVERl9GTEFHX1VURjggZmxhZ3MgYXMgdG8KPiA+ID4gPiBkaXN0aW5ndWlzaCBi
ZXR3ZWVuIFVURi04IGFuZCBub24tVVRGLTggaXQgaXMgbmVlZGVkIGp1c3QgdG8gY2hlY2sgaWYK
PiA+ID4gPiBzX25sc19tYXAgc2V0IHRvIE5VTEwgb3Igbm90Lgo+ID4gPiA+IAo+ID4gPiA+IFNp
Z25lZC1vZmYtYnk6IFBhbGkgUm9ow6FyIDxwYWxpQGtlcm5lbC5vcmc+Cj4gPiA+IAo+ID4gPiBU
aGFua3MgZm9yIHRoZSBjbGVhbnVwLiBJdCBsb29rcyBnb29kLiBGZWVsIGZyZWUgdG8gYWRkOgo+
ID4gPiAKPiA+ID4gUmV2aWV3ZWQtYnk6IEphbiBLYXJhIDxqYWNrQHN1c2UuY3o+Cj4gPiA+IAo+
ID4gPiBPciBzaG91bGQgSSB0YWtlIHRoaXMgcGF0Y2ggdGhyb3VnaCBteSB0cmVlPwo+ID4gCj4g
PiBIZWxsbyEgUGF0Y2hlcyBhcmUganVzdCBSRkMsIG1vc3RseSB1bnRlc3RlZCBhbmQgbm90IHJl
YWR5IGZvciBtZXJnaW5nLgo+ID4gSSB3aWxsIHdhaXQgZm9yIGZlZWRiYWNrIGFuZCB0aGVuIEkg
ZG8gbW9yZSB0ZXN0aW5nIG5hZCBwcmVwYXJlIG5ldwo+ID4gcGF0Y2ggc2VyaWVzLgo+IAo+IE9L
LCBGV0lXIEkndmUgYWxzbyB0ZXN0ZWQgdGhlIFVERiBhbmQgaXNvZnMgcGF0Y2hlcy4KCldlbGws
IGlmIHlvdSBoYXZlIGFscmVhZHkgZG9uZSB0ZXN0cywgcGF0Y2hlcyBhcmUgY29ycmVjdCBhbmQg
dGhlc2UgZnMKZHJpdmVyIGFyZSB3b3JraW5nIGZpbmUgdGhlbiBmZWxsIGZyZWUgdG8gdGFrZSBp
dCB0aHJvdWdoIHlvdXIgdHJlZS4KCkkganVzdCB3YW50ZWQgdG8gd2FybiBwZW9wbGUgdGhhdCBw
YXRjaGVzIGluIHRoaXMgUkZDIGFyZSBtb3N0bHkKdW50ZXN0ZWQgdG8gcHJldmVudCBzb21lIGlz
c3Vlcy4gQnV0IGlmIHNvbWVib2R5IGVsc2Ugd2FzIGZhc3RlciB0aGFuCm1lLCBkaWQgdGVzdGlu
ZyArIHJldmlld2luZyBhbmQgdGhlcmUgd2FzIG5vIGlzc3VlLCBJIGRvIG5vdCBzZWUgYW55CnBy
b2JsZW0gd2l0aCBpbmNsdWRpbmcgdGhlbS4gSnVzdCBJIGNhbm5vdCBwdXQgbXkgb3duIFRlc3Rl
ZC1ieSAoeWV0KSA6LSkKCj4gCQkJCQkJCQlIb256YQo+IAo+IC0tIAo+IEphbiBLYXJhIDxqYWNr
QHN1c2UuY29tPgo+IFNVU0UgTGFicywgQ1IKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpKZnMtZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKSmZzLWRpc2N1
c3Npb25AbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0
L2xpc3RzL2xpc3RpbmZvL2pmcy1kaXNjdXNzaW9uCg==
