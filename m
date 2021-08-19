Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A52853F22A5
	for <lists+jfs-discussion@lfdr.de>; Fri, 20 Aug 2021 00:04:44 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1mGq99-0004kD-LK; Thu, 19 Aug 2021 22:04:23 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <pali@kernel.org>)
 id 1mGq98-0004k1-KL; Thu, 19 Aug 2021 22:04:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=B5aZ4nK90BZTFIiUADLDMOgyeg8C2WIT5Ap/vEHbks8=; b=Er+2v0eS2/YvI4ywMa8M3/eO5f
 0egC7xe7vVlrkI8bg1lwqFooXiDmQqUUaSZl1bzqMQCsvg0IT7WQBB/rLMJWi1tmAH/ACM2J5vMgj
 MmBGhStOrMHBMEnCF70Wraf4ErdnYghpYwM72Q2fYprDCvXcmgiZfBxXw9W7osyigVuk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=B5aZ4nK90BZTFIiUADLDMOgyeg8C2WIT5Ap/vEHbks8=; b=CIDLwWvl+mxwtbryIt17jVPX15
 l5i5Z1OiKGMBWRV349diB5f12nFB+ltli42UqtOs1yzh2Y3I2ZvlaRRK1bhGUOqx6rJwjA0UjrS4J
 VcuXCqscy77E5Fi8Bj4KKI9vCB8Y33+fR0suIx7dWbjWeA6txzDUmamZcdgUWHzYdVfg=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mGq97-0003Bu-Cr; Thu, 19 Aug 2021 22:04:22 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id ADFEF6108F;
 Thu, 19 Aug 2021 22:04:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1629410655;
 bh=aUhzsHm+fJwhMTC1YGSa8jGlBGg6DmC3CFu7zMxr+VE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=TGeMjKTr1FVwA7pQUArJRW8E2BtTQ4aNAs+1OXpfMatsVwerUR/jDq723KcxJp78v
 1/YHKbhkhVekIBOmBFpZC/YdUAyc1XUbsx+3VlKF9EXx1kLpt+JZESe09e045PuUFS
 U8UcsRiQdKyWmrybcNP14Rra09zGYSsBdWBhXi6PHOXyd6xGHMLG2xwNkfGSQqqFHN
 zp7rg/cdnhEIseJprZ8V8SxTr1MEKgUFJ0HEpYpR6Ijb4Q80mBUPYVhtEVtO1aAe84
 9NUYX1G9N0anTevfQtT/zyLLTkPUZNiQ+76QH+D9dDEAFE00/eerI7VtPKEfs3fPZq
 B6WgpO3azmYyQ==
Received: by pali.im (Postfix)
 id 632537EA; Fri, 20 Aug 2021 00:04:12 +0200 (CEST)
Date: Fri, 20 Aug 2021 00:04:12 +0200
From: Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
To: Kari Argillander <kari.argillander@gmail.com>
Message-ID: <20210819220412.jicwnrevzi6s25ee@pali>
References: <20210808162453.1653-1-pali@kernel.org>
 <20210808162453.1653-6-pali@kernel.org>
 <20210819012108.3isqi4t6rmd5fd5x@kari-VirtualBox>
 <20210819081222.vnvxfrtqctfev6xu@pali>
 <20210819102342.6ps7lowpuomyqcdk@kari-VirtualBox>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210819102342.6ps7lowpuomyqcdk@kari-VirtualBox>
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
X-Headers-End: 1mGq97-0003Bu-Cr
Subject: Re: [Jfs-discussion] [RFC PATCH 05/20] ntfs: Undeprecate iocharset=
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
 linux-kernel@vger.kernel.org, Anton Altaparmakov <anton@tuxera.com>,
 Christoph Hellwig <hch@infradead.org>,
 Alexander Viro <viro@zeniv.linux.org.uk>, Pavel Machek <pavel@ucw.cz>,
 linux-fsdevel@vger.kernel.org, "Theodore Y . Ts'o" <tytso@mit.edu>,
 Andrew Morton <akpm@linux-foundation.org>,
 Marek =?utf-8?B?QmVow7pu?= <marek.behun@nic.cz>,
 Salah Triki <salah.triki@gmail.com>,
 OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

T24gVGh1cnNkYXkgMTkgQXVndXN0IDIwMjEgMTM6MjM6NDIgS2FyaSBBcmdpbGxhbmRlciB3cm90
ZToKPiBPbiBUaHUsIEF1ZyAxOSwgMjAyMSBhdCAxMDoxMjoyMkFNICswMjAwLCBQYWxpIFJvaMOh
ciB3cm90ZToKPiA+IE9uIFRodXJzZGF5IDE5IEF1Z3VzdCAyMDIxIDA0OjIxOjA4IEthcmkgQXJn
aWxsYW5kZXIgd3JvdGU6Cj4gPiA+IE9uIFN1biwgQXVnIDA4LCAyMDIxIGF0IDA2OjI0OjM4UE0g
KzAyMDAsIFBhbGkgUm9ow6FyIHdyb3RlOgo+ID4gPiA+IE90aGVyIGZzIGRyaXZlcnMgYXJlIHVz
aW5nIGlvY2hhcnNldD0gbW91bnQgb3B0aW9uIGZvciBzcGVjaWZ5aW5nIGNoYXJzZXQuCj4gPiA+
ID4gU28gbWFyayBpb2NoYXJzZXQ9IG1vdW50IG9wdGlvbiBhcyBwcmVmZXJyZWQgYW5kIGRlcHJl
Y2F0ZSBubHM9IG1vdW50Cj4gPiA+ID4gb3B0aW9uLgo+ID4gPiAgCj4gPiA+IE9uZSBpZGVhIGlz
IGFsc28gbWFrZSB0aGlzIGNoYW5nZSB0byBmcy9mY19wYXJzZXIuYyBhbmQgdGhlbiB3aGVuIHdl
Cj4gPiA+IHdhbnQgd2UgY2FuIGRyb3Agc3VwcG9ydCBmcm9tIGFsbCBmaWxlc3lzdGVtIHNhbWUg
dGltZS4gVGhpcyB3YXkgd2UKPiA+ID4gY2FuIGdldCBtb3JlIGRlcHJlY2F0ZWQgY29kZSBvZmYg
dGhlIGZzIGRyaXZlcnMuIERyYXcgYmFjayBpcyB0aGF0Cj4gPiA+IHRoZW4gZXZlcnkgZmlsZXNz
dGVtIGhhcyB0aGlzIGRlcHJlY2F0ZWQgbmxzPSBvcHRpb24gaWYgaXQgc3VwcG9ydAo+ID4gPiBp
b2NoYXJzZXRzIG9wdGlvbi4gQnV0IHRoYXQgc2hvdWxkIGltbyBiZSBvay4KPiA+IAo+ID4gQmV3
YXJlIHRoYXQgaW9jaGFyc2V0PSBpcyByZXF1aXJlZCBvbmx5IGZvciBmcyB3aGljaCBzdG9yZSBm
aWxlbmFtZXMgaW4KPiA+IHNvbWUgc3BlY2lmaWMgZW5jb2RpbmcgKGluIHRoaXMgY2FzZSBleHRl
bnNpb24gdG8gVVRGLTE2KS4gRm9yIGZzIHdoaWNoCj4gPiBzdG9yZSBmaWxlbmFtZXMgaW4gcmF3
IGJ5dGVzIHRoaXMgb3B0aW9uIHNob3VsZCBub3QgYmUgcGFyc2VkIGF0IGFsbC4KPiAKPiBZZWFo
IG9mIGNvdXJzZS4gSSB3YXMgdGhpbmtpbmcgdGhhdCB3aGF0IHdlIGRvIGlzIHRoYXQgaWYga2V5
IGlzIG5scz0KPiB3ZSBjaGFuZ2Uga2V5IHRvIGlvY2hhcnNldCwgcHJpbnQgZGVwcmVjYXRlZCBh
bmQgdGhlbiBzZW5kIGl0IHRvIGRyaXZlcgo+IHBhcnNlciBhcyB1c3VhbC4gVGhpcyB3YXkgZHJp
dmVyIHBhcnNlciB3aWxsIG5ldmVyIGtub3cgdGhhdCB1c2VyCj4gc3BlY2lmaWUgbmxzPSBiZWNh
dXNlIGl0IGp1c3QgZ2V0IGlvY2hhcnNldC4gQnV0IHRoaXMgaXMgcHJvYmVibHkgdG9vCj4gZmFu
Y3kgd2F5IHRvIHRoaW5rIHNpbXBsZSBwcm9ibGVtLiBKdXN0IGlkZWEuIAoKVGhpcyBoYXMgYW4g
aXNzdWUgdGhhdCB3aGVuIHlvdSB1c2UgbmxzPSBvcHRpb24gZm9yIGUuZy4gZXh0NCBmcyB0aGVu
Cmtlcm5lbCBzdGFydHMgcmVwb3J0aW5nIHRoYXQgbmxzPSBmb3IgZXh0NCBpcyBkZXByZWNhdGVk
LiBCdXQgdGhlcmUgaXMKbm8gbmxzPSBvcHRpb24gYW5kIG5laXRoZXIgaW9jaGFyc2V0PSBvcHRp
b24gZm9yIGV4dDQuIFNvIGtlcm5lbCBzaG91bGQKbm90IHN0YXJ0IHJlcG9ydGluZyBzdWNoIHdh
cm5pbmdzIGZvciBleHQ0LgoKPiA+IFRoZXJlZm9yZSBJJ20gbm90IHN1cmUgaWYgdGhpcyBwYXJz
aW5nIHNob3VsZCBiZSBpbiBnbG9iYWwKPiA+IGZzL2ZjX3BhcnNlci5jIGZpbGUuLi4KPiAKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpKZnMtZGlzY3Vz
c2lvbiBtYWlsaW5nIGxpc3QKSmZzLWRpc2N1c3Npb25AbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0
dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL2pmcy1kaXNjdXNzaW9u
Cg==
