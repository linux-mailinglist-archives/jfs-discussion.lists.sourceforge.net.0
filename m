Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id ED0A03E4E72
	for <lists+jfs-discussion@lfdr.de>; Mon,  9 Aug 2021 23:26:26 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1mDCmh-0004yt-Ur; Mon, 09 Aug 2021 21:26:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <pali@kernel.org>)
 id 1mDCmg-0004yZ-0Q; Mon, 09 Aug 2021 21:26:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=i4fD0FRMUckUTd+d/b2nh/i3WUmV7wR3U22ROrpCdQA=; b=IDkG/vz0c2Q0xTmdjU/D6E7dm/
 RsnQNaGTCVG7hAF9QBN+yQUJnxDf+pdlAqCb0vKd2gQIYM16agmbUqZe5AqM8zpOJPjY6LibYrzb3
 L/8T5tS26lnB2pKPw96iu8pX/EEWR1FiEfbKhYyxdU6Sv9p3DnTq8L4jI9qG0dm+adoY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=i4fD0FRMUckUTd+d/b2nh/i3WUmV7wR3U22ROrpCdQA=; b=KAjgQDc8H4i0QBEeyXzQ78RRHo
 O7ksDB0t1uakeRF/6mO6pxE3ivc+sKZrUM0a5FkdlOSbs087ABzdTeZhXrjcJwVFhR95n9NwuSHAY
 bOAg4/YZrJe0ApgHaMrwZEtphdEKrM83Dm+OMKupBAsRAovHZjyBWlUjGdNNXhjKtxi0=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mDCma-0006Bo-3N; Mon, 09 Aug 2021 21:26:09 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 893AB60EB9;
 Mon,  9 Aug 2021 21:25:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1628544358;
 bh=OVk9UHdUYnGUAQ/9b5LQEesj/Z+2icrT45MDhBuum7k=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=k3zkEbpe3SR2ifocQzBNaNV4JTESvreRYDOITb5EhKP8EF1VxpwWoy+RBCTjiYmKG
 v1qC5xH3ZnW5mGznhtox5enskOXyHSnXgsen3YDz0BndDX9twm/bgcx4pfzEYCaSTN
 4XTcBM/zRN4/bJViHUON4w3GNQslKscKPWCGx7Q3xYbB4TUm3Wqi2t6+RAMDLGRuAN
 gRWcEfpioDK297C83BT0zf/omKPI/Lqh9aO/PfhsA5pH+7K1y0OV5zWmYsuYhYuCTk
 gmaJUaIsg0ijm4gpMEBQFUZBGw5V4pZFH6p1K+X46nz64ONI6umzfOUp2j44Pu+/X7
 AbZ/qMVdtS+AQ==
Received: by pali.im (Postfix)
 id 41BACC7C; Mon,  9 Aug 2021 23:25:56 +0200 (CEST)
Date: Mon, 9 Aug 2021 23:25:56 +0200
From: Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
To: Kari Argillander <kari.argillander@gmail.com>
Message-ID: <20210809212556.3ygj6atbc5ma642m@pali>
References: <20210808162453.1653-1-pali@kernel.org>
 <20210808162453.1653-3-pali@kernel.org>
 <20210809204921.3ovrnbtzywsui4pt@kari-VirtualBox>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210809204921.3ovrnbtzywsui4pt@kari-VirtualBox>
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
X-Headers-End: 1mDCma-0006Bo-3N
Subject: Re: [Jfs-discussion] [RFC PATCH 02/20] hfsplus: Add iocharset=
 mount option as alias for nls=
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

T24gTW9uZGF5IDA5IEF1Z3VzdCAyMDIxIDIzOjQ5OjIxIEthcmkgQXJnaWxsYW5kZXIgd3JvdGU6
Cj4gT24gU3VuLCBBdWcgMDgsIDIwMjEgYXQgMDY6MjQ6MzVQTSArMDIwMCwgUGFsaSBSb2jDoXIg
d3JvdGU6Cj4gPiBPdGhlciBmcyBkcml2ZXJzIGFyZSB1c2luZyBpb2NoYXJzZXQ9IG1vdW50IG9w
dGlvbiBmb3Igc3BlY2lmeWluZyBjaGFyc2V0Lgo+ID4gU28gYWRkIGl0IGFsc28gZm9yIGhmc3Bs
dXMgYW5kIG1hcmsgb2xkIG5scz0gbW91bnQgb3B0aW9uIGFzIGRlcHJlY2F0ZWQuCj4gCj4gSXQg
d291bGQgYmUgZ29vZCB0byBhbHNvIHVwZGF0ZSBEb2N1bWVudGF0aW9uL2ZpbGVzeXN0ZW1zL2hm
c3BsdXMucnN0LgoKR29vZCBwb2ludCEgSSdtIG1ha2luZyBhIG5vdGUuCgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSmZzLWRpc2N1c3Npb24gbWFpbGlu
ZyBsaXN0Ckpmcy1kaXNjdXNzaW9uQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3Rz
LnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9qZnMtZGlzY3Vzc2lvbgo=
