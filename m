Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 09BC622E512
	for <lists+jfs-discussion@lfdr.de>; Mon, 27 Jul 2020 07:00:46 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1jzvFR-0002c9-Mq; Mon, 27 Jul 2020 05:00:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lists@nerdbynature.de>) id 1jzvFQ-0002by-Fm
 for jfs-discussion@lists.sourceforge.net; Mon, 27 Jul 2020 05:00:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:Message-ID:In-Reply-To:Subject:cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WxYfaUk0WSlM1nvbLR7Ze3E8m5tqppUVeXev68Ljs3s=; b=mzOk4548FxPVnpsy/SQUgY5fiq
 TEIGz1W44Lnnhc3wxe+c/g63ZdT4YN5HaXtY4UOF65xkinG6GuYE0B3yuORimxwD+8qaosm2WKC3C
 nmWGFaorar1zcYwBC95/Ap9q6BDS0dhus6zDpU/376LZkGwNU549oOLixXEF1OSVUgXM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID
 :In-Reply-To:Subject:cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=WxYfaUk0WSlM1nvbLR7Ze3E8m5tqppUVeXev68Ljs3s=; b=RAA8xRh3mbfJDobpkyW82XqGZo
 BoEInf6VKQazE12fHgY/xTyZhvV86Btj+kfBYQ62L1S+zW8LUqSUw4lveLKA8j67fj/Qkg7ZoDBkS
 gXc6pV88IE37OF/kZLU+BlMupkUkFO4TzMgBkn4GHAwyUVOcAJtEzEds272XzSO0rwlY=;
Received: from trent.utfs.org ([94.185.90.103])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jzvFL-000hz7-Ve
 for jfs-discussion@lists.sourceforge.net; Mon, 27 Jul 2020 05:00:24 +0000
Received: from localhost (localhost [IPv6:::1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by trent.utfs.org (Postfix) with ESMTPS id 23C3160063;
 Mon, 27 Jul 2020 07:00:10 +0200 (CEST)
Date: Sun, 26 Jul 2020 22:00:10 -0700 (PDT)
From: Christian Kujau <lists@nerdbynature.de>
To: =?UTF-8?Q?Jernej_Simon=C4=8Di=C4=8D?= <jernej's-sflist@eternallybored.org>
In-Reply-To: <431784596.20200726211752@eternallybored.org>
Message-ID: <alpine.DEB.2.22.1.446.2007262156160.9019@trent.utfs.org>
References: <833415339.20200726144354@eternallybored.org>
 <431784596.20200726211752@eternallybored.org>
User-Agent: Alpine 2.22.1 (DEB 446 2020-06-13)
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1jzvFL-000hz7-Ve
Subject: Re: [Jfs-discussion] fsck.jfs segfaults
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
Cc: jfs-discussion@lists.sourceforge.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

T24gU3VuLCAyNiBKdWwgMjAyMCwgSmVybmVqIFNpbW9uxI1pxI0gd3JvdGU6Cj4gPiBBZnRlciBJ
IHJlYm9vdGVkIG15IHNlcnZlciwgb25lIG9mIHRoZSB2b2x1bWVzIGZhaWxlZCB0byBtb3VudCwg
YW5kCj4gPiB3aGVuIEkgcnVuIGZzY2suamZzIG9uIGl0LCBpdCBzZWdmYXVsdHM6Cj4gCj4gSGVy
ZSdzIHRoZSBiYWNrdHJhY2UgZnJvbSBqZnNfZnNjazoKPiAKPiBSZWFkaW5nIHN5bWJvbHMgZnJv
bSBqZnN1dGlscy0xLjEuMTUvZnNjay9qZnNfZnNjay4uLgo+IFtOZXcgTFdQIDMwNl0KPiBDb3Jl
IHdhcyBnZW5lcmF0ZWQgYnkgYGpmc3V0aWxzLTEuMS4xNS9mc2NrL2pmc19mc2NrIC12IC9kZXYv
bG9vcDEyJy4KPiBQcm9ncmFtIHRlcm1pbmF0ZWQgd2l0aCBzaWduYWwgU0lHU0VHViwgU2VnbWVu
dGF0aW9uIGZhdWx0LgoKV2l0aCBTSUdTRUdWIGVycm9ycywgSSdtIGFsd2F5cyByZW1pbmRlZCBh
Ym91dCB0aGUgCmh0dHBzOi8vd3d3LmJpdHdpemFyZC5ubC9zaWcxMS8gRkFRLiBTbywgbWF5YmUg
aXQgcmVhbGx5IGlzIGhhcmR3YXJlIAplcnJvcnMgLSBkbyB5b3UgaGF2ZSB0aGUgY2hhbmNlIHRv
IGF0dGFjaCB0aGUgZGlzayB0byBhIGRpZmZlcmVudCBtYWNoaW5lIAphbmQgcnVuIGpmc19mc2Nr
IHRoZXJlPwoKSFRILApDLgotLSAKQk9GSCBleGN1c2UgIzI3NzoKCllvdXIgRmx1eCBDYXBhY2l0
b3IgaGFzIGdvbmUgYmFkLgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkpmcy1kaXNjdXNzaW9uIG1haWxpbmcgbGlzdApKZnMtZGlzY3Vzc2lvbkBsaXN0
cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlz
dGluZm8vamZzLWRpc2N1c3Npb24K
