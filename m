Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D3009718194
	for <lists+jfs-discussion@lfdr.de>; Wed, 31 May 2023 15:26:50 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1q4LqN-0008ES-5P;
	Wed, 31 May 2023 13:26:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <pmenzel@molgen.mpg.de>) id 1q4Gg2-0004ya-Bk
 for jfs-discussion@lists.sourceforge.net;
 Wed, 31 May 2023 07:55:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=b4NnYIhlQEC/cwyGfZzaMshsuDRFDikIYXaTR1U/YDw=; b=HbwjgBqeI1qedNChqWooFIP/M+
 cRHtGp6lpR1Ow/TMCkfT1DR6guECOzOhvjDwzE20PS5T6FZPj0IluF/yX9C0v0Wa7jaq12cSpJirO
 lLDJeSS3SfhqNsr4bxO2Ts8e1N2MRLp1XLsVBAuVwJpYFEvxeSjPaGp3CJq4QPTvI5SU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=b4NnYIhlQEC/cwyGfZzaMshsuDRFDikIYXaTR1U/YDw=; b=l1IPCV6XNFkZEjMbSKE64Pcmy7
 ZrRm2XaIyssIYXulrK7sJITVpqrZG5bGGUppDqgRyPKCb9tYClZyO3uQ+Leb2CsQO0P48NyeuaBQ5
 glbgfiJJ/OOGO1fZy2mMhQd/FqM9PsT1mYP5+4BdrC7P/tKcNHWMvX6CZVDYeXPP9cDQ=;
Received: from mx3.molgen.mpg.de ([141.14.17.11])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1q4Gfy-007Evn-Rb for jfs-discussion@lists.sourceforge.net;
 Wed, 31 May 2023 07:55:27 +0000
Received: from [192.168.0.2] (ip5f5ae86a.dynamic.kabel-deutschland.de
 [95.90.232.106])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id B64BB61E4052B;
 Wed, 31 May 2023 09:54:23 +0200 (CEST)
Message-ID: <e510055e-da93-e9c1-d60b-f6b357d6611b@molgen.mpg.de>
Date: Wed, 31 May 2023 09:54:23 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
To: Johannes Thumshirn <johannes.thumshirn@wdc.com>,
 Song Liu <song@kernel.org>, Christoph Hellwig <hch@lst.de>
References: <cover.1685461490.git.johannes.thumshirn@wdc.com>
 <c60c6f46b70c96b528b6c4746918ea87c2a01473.1685461490.git.johannes.thumshirn@wdc.com>
 <20230531042502.GM32705@lst.de>
 <CAPhsuW62vBccjUkCUmYr+OZSLgGozFzX4YyzP8OV+dvsLujCGg@mail.gmail.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <CAPhsuW62vBccjUkCUmYr+OZSLgGozFzX4YyzP8OV+dvsLujCGg@mail.gmail.com>
X-Spam-Score: -2.4 (--)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Dear Johannes, Thank you for your patches. Am 31.05.23 um
   06:58 schrieb Song Liu: > On Tue, May 30, 2023 at 9:25 PM Christoph Hellwig
    <hch@lst.de> wrote: >> >> To me these look like __bio_add_page candidates,
    but I guess Song >> preferred it [...] 
 
 Content analysis details:   (-2.4 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
                             medium trust
                             [141.14.17.11 listed in list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.1 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1q4Gfy-007Evn-Rb
X-Mailman-Approved-At: Wed, 31 May 2023 13:26:14 +0000
Subject: Re: [Jfs-discussion] [PATCH v6 15/20] md: raid1: check if adding
 pages to resync bio fails
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
Cc: Jens Axboe <axboe@kernel.dk>, linux-raid@vger.kernel.org,
 Damien Le Moal <damien.lemoal@wdc.com>, cluster-devel@redhat.com,
 Chaitanya Kulkarni <kch@nvidia.com>, Andreas Gruenbacher <agruenba@redhat.com>,
 Dave Kleikamp <shaggy@kernel.org>,
 Damien Le Moal <damien.lemoal@opensource.wdc.com>, gouhao@uniontech.com,
 Mike Snitzer <snitzer@kernel.org>, jfs-discussion@lists.sourceforge.net,
 Matthew Wilcox <willy@infradead.org>, Ming Lei <ming.lei@redhat.com>,
 linux-block@vger.kernel.org, linux-mm@kvack.org, dm-devel@redhat.com,
 Mikulas Patocka <mpatocka@redhat.com>, Hannes Reinecke <hare@suse.de>,
 linux-fsdevel@vger.kernel.org, Bob Peterson <rpeterso@redhat.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

RGVhciBKb2hhbm5lcywKCgpUaGFuayB5b3UgZm9yIHlvdXIgcGF0Y2hlcy4KCkFtIDMxLjA1LjIz
IHVtIDA2OjU4IHNjaHJpZWIgU29uZyBMaXU6Cj4gT24gVHVlLCBNYXkgMzAsIDIwMjMgYXQgOToy
NeKAr1BNIENocmlzdG9waCBIZWxsd2lnIDxoY2hAbHN0LmRlPiB3cm90ZToKPj4KPj4gVG8gbWUg
dGhlc2UgbG9vayBsaWtlIF9fYmlvX2FkZF9wYWdlIGNhbmRpZGF0ZXMsIGJ1dCBJIGd1ZXNzIFNv
bmcKPj4gcHJlZmVycmVkIGl0IHRoaXMgd2F5PyAgSXQnbGwgYWRkIGEgYml0IHBvaW50bGVzcyBi
b2lsZXJwbGF0ZSBjb2RlLAo+PiBidXQgSSdtIG9rIHdpdGggdGhhdC4KPiAKPiBXZSBoYWQgc29t
ZSBkaXNjdXNzaW9uIG9uIHRoaXMgaW4gdjIsIGFuZCBkZWNpZGVkIHRvIGtlZXAgdGhlc2UKPiBh
c3NlcnQtbGlrZSBXQVJOX09OKCkuCgppdOKAmWQgYmUgZ3JlYXQgaWYgeW91IGFkZGVkIGEgc3Vt
bWFyeS9ub3RlIG9mIHRoZSBkaXNjdXNzaW9uIHRvIHRoZSAKY29tbWl0IG1lc3NhZ2UuCgoKS2lu
ZCByZWdhcmRzLAoKUGF1bAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkpmcy1kaXNjdXNzaW9uIG1haWxpbmcgbGlzdApKZnMtZGlzY3Vzc2lvbkBsaXN0
cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlz
dGluZm8vamZzLWRpc2N1c3Npb24K
