Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A09BC3F14F0
	for <lists+jfs-discussion@lfdr.de>; Thu, 19 Aug 2021 10:12:51 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1mGdA9-0001yk-4T; Thu, 19 Aug 2021 08:12:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <pali@kernel.org>)
 id 1mGdA7-0001ya-GU; Thu, 19 Aug 2021 08:12:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=t1vqcC40E7+S9J27CU2mLhd6z+QTe8mzCl4bE+XvYv0=; b=Hv56z14uRqIfN76WeT4EBUQtCr
 FegkGjIqAq+LV8ygzAviKMhyV/P+zleWCiD3dpKOvgLqaK1XYWcXx/ZnVZGfY1u1XF3QvtRQY3PdB
 lswJM1kWlXnmTVyAUYwVu4oS7vzgOwUdl6G9MWbPBVQT5z0gHYjW0iHjACCtrxW+PBrE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=t1vqcC40E7+S9J27CU2mLhd6z+QTe8mzCl4bE+XvYv0=; b=GsipJ+ucKaxTvT6x1bIUexmSju
 zlR4HWce1SddRhDGQAcaT6GxodiOAygvqy/xCLxxG+0qv+ksZAv47T9XnYucahBdquNVYP2sNpB9J
 IbLmnhwul49/fkVJboZf+AvRtj7ZWM0Ctc2jloeJ5gYEq7SpkO8JWYONmvaH5DZpxISE=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mGdA6-0000mP-CX; Thu, 19 Aug 2021 08:12:31 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id D0D1A61131;
 Thu, 19 Aug 2021 08:12:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1629360745;
 bh=GOCGkI4khodlS6ZkJJHgdEHRUQUkLqQWLt51fbZhqag=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ImP54DbDs6Ze/pjeJpxZIXIxsHwZxhPCVYEj1FQ58Pk8MQu0YgBPPHVt2QyUrWWOo
 F+7xVtg+xAy7FRjbe1EDJHizPC/0f/+6YwEFfR5N4NeTc9Emy2+fr9qITRH7x6la1+
 hCoKeGQqcKtWUd31f3zvr+9Afmvbea3bQHeAPiMQbPMWP2TOn6PTse/9stQ5OEP3SZ
 JTYkH0+aLr1DP5o6LkC0JuhqRDq62f+H5i2uiAFs3/pjZM9v7Hz9dS2sVFhpuvLxJE
 HuqJuEhjdyzIEfkvibVqGVld2ul4ViExKk1iPge2+38neIx/AdSziIQW7tMIsNbDhk
 G+ZkXmRCjJf3Q==
Received: by pali.im (Postfix)
 id 571FC7EA; Thu, 19 Aug 2021 10:12:22 +0200 (CEST)
Date: Thu, 19 Aug 2021 10:12:22 +0200
From: Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
To: Kari Argillander <kari.argillander@gmail.com>
Message-ID: <20210819081222.vnvxfrtqctfev6xu@pali>
References: <20210808162453.1653-1-pali@kernel.org>
 <20210808162453.1653-6-pali@kernel.org>
 <20210819012108.3isqi4t6rmd5fd5x@kari-VirtualBox>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210819012108.3isqi4t6rmd5fd5x@kari-VirtualBox>
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
X-Headers-End: 1mGdA6-0000mP-CX
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

T24gVGh1cnNkYXkgMTkgQXVndXN0IDIwMjEgMDQ6MjE6MDggS2FyaSBBcmdpbGxhbmRlciB3cm90
ZToKPiBPbiBTdW4sIEF1ZyAwOCwgMjAyMSBhdCAwNjoyNDozOFBNICswMjAwLCBQYWxpIFJvaMOh
ciB3cm90ZToKPiA+IE90aGVyIGZzIGRyaXZlcnMgYXJlIHVzaW5nIGlvY2hhcnNldD0gbW91bnQg
b3B0aW9uIGZvciBzcGVjaWZ5aW5nIGNoYXJzZXQuCj4gPiBTbyBtYXJrIGlvY2hhcnNldD0gbW91
bnQgb3B0aW9uIGFzIHByZWZlcnJlZCBhbmQgZGVwcmVjYXRlIG5scz0gbW91bnQKPiA+IG9wdGlv
bi4KPiAgCj4gT25lIGlkZWEgaXMgYWxzbyBtYWtlIHRoaXMgY2hhbmdlIHRvIGZzL2ZjX3BhcnNl
ci5jIGFuZCB0aGVuIHdoZW4gd2UKPiB3YW50IHdlIGNhbiBkcm9wIHN1cHBvcnQgZnJvbSBhbGwg
ZmlsZXN5c3RlbSBzYW1lIHRpbWUuIFRoaXMgd2F5IHdlCj4gY2FuIGdldCBtb3JlIGRlcHJlY2F0
ZWQgY29kZSBvZmYgdGhlIGZzIGRyaXZlcnMuIERyYXcgYmFjayBpcyB0aGF0Cj4gdGhlbiBldmVy
eSBmaWxlc3N0ZW0gaGFzIHRoaXMgZGVwcmVjYXRlZCBubHM9IG9wdGlvbiBpZiBpdCBzdXBwb3J0
Cj4gaW9jaGFyc2V0cyBvcHRpb24uIEJ1dCB0aGF0IHNob3VsZCBpbW8gYmUgb2suCgpCZXdhcmUg
dGhhdCBpb2NoYXJzZXQ9IGlzIHJlcXVpcmVkIG9ubHkgZm9yIGZzIHdoaWNoIHN0b3JlIGZpbGVu
YW1lcyBpbgpzb21lIHNwZWNpZmljIGVuY29kaW5nIChpbiB0aGlzIGNhc2UgZXh0ZW5zaW9uIHRv
IFVURi0xNikuIEZvciBmcyB3aGljaApzdG9yZSBmaWxlbmFtZXMgaW4gcmF3IGJ5dGVzIHRoaXMg
b3B0aW9uIHNob3VsZCBub3QgYmUgcGFyc2VkIGF0IGFsbC4KClRoZXJlZm9yZSBJJ20gbm90IHN1
cmUgaWYgdGhpcyBwYXJzaW5nIHNob3VsZCBiZSBpbiBnbG9iYWwKZnMvZmNfcGFyc2VyLmMgZmls
ZS4uLgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkpm
cy1kaXNjdXNzaW9uIG1haWxpbmcgbGlzdApKZnMtZGlzY3Vzc2lvbkBsaXN0cy5zb3VyY2Vmb3Jn
ZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vamZzLWRp
c2N1c3Npb24K
