Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A6CC36CF77D
	for <lists+jfs-discussion@lfdr.de>; Thu, 30 Mar 2023 01:36:55 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1phfLO-0004tE-6I;
	Wed, 29 Mar 2023 23:36:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=44543d287=damien.lemoal@opensource.wdc.com>)
 id 1phfLF-0004t6-IX for jfs-discussion@lists.sourceforge.net;
 Wed, 29 Mar 2023 23:36:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MvGqTWIlGXqbOgey7jqT3j/jdkzCYRWku0GYSqEaXXs=; b=kRgApsT3HnQZ8tq6Dl43EDUnUC
 hRQdyB45B+9uXHkA6cvntiyRGSfXoPuBuX1TS8tsezfkzfR3MJUaRRKpeMld1Myva2B/kIaH9mqZT
 BlAADTzrscIBmnrw4axR34xj+EX6BGehDMELch0BY7wWjbi+ILKUwTrG/4rUka9p0jhQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=MvGqTWIlGXqbOgey7jqT3j/jdkzCYRWku0GYSqEaXXs=; b=Bw90cKpGm/i1lpaeB4GK27Urz1
 75Sc3lWz0aDoX7sSPqwGec88Tq9t0IJYuUjAh6zj+ONMt+fsWlcJS8vGMXBjHG6i7ESCBnKjnDh3E
 K9l2V2p85ykvSeTABymjjcNWeo+HYP0jt/fWWbsZkxC1JXtu+jGklFlydPLjdNYVa14U=;
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1phfLE-0001Xu-0t for jfs-discussion@lists.sourceforge.net;
 Wed, 29 Mar 2023 23:36:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1680132992; x=1711668992;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=OTfJOB5+rMhAgZTM4ONfC4vlfxhMaFKo471fkAaO7qM=;
 b=oj6WB4SMuZb8PQz3Mm+VE3ZZ2PhfIBTKLc2xRhGRpaQNlKaQXaOIp4hW
 N/ts1Ad83e8HOZ+E9rlJUTvwWTqp3i0R7me3N7yeEwCUpq7DJYMwTV0v1
 EYk/vH+kxYeEFnhcUVkWOY57U6tIxUxexEqjx2eKoxQ2rlq5T/aQOGvhQ
 lG9tCWKfIk7FQiD0xMwLAQlRcZyCnA6D7XqOYI2emjetA9Lx6iguQE9kR
 uOVpj2Yd0zD26mHMow1yR/368SvfeQaWfJEihe5+CESWp1yneasiPeBAO
 zSQOV3Y9gAGBqyXiqpdE7h9TiTD2G/CB2d8hyXOnTHwD87vD6k+ucYeuH w==;
X-IronPort-AV: E=Sophos;i="5.98,301,1673884800"; d="scan'208";a="231808852"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 30 Mar 2023 07:36:26 +0800
IronPort-SDR: lEz7STBFbfjM4O0ZNeAe99Fzb255FE1IHJw8SfTLYYOCRSsjHm8a1r1yqqlktzNRhUcWQ8C35i
 j1lM01Eq/5agupQQSuBXr4dQSjJNvmEtqJaiCg9QTUD7BApo0H8Yq1h3qlmIDqbwo1BRic+wXa
 AW9+Zc0exKz3rSGncvmJ1L0tCMpLqxO9Y6s04dBWy8/mkdQUk3j6+TqEAXrveoyQV6mAN6x4Ld
 g3nM2s6MW5ckkM/0FkNkOZuJxs9LITCkinJEOd6uUrgr/BvHzcXlASwHwTLCoIIsho6EKlDBJQ
 aOw=
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 29 Mar 2023 15:52:34 -0700
IronPort-SDR: WxFZQYTjMLZjWlV/H3/BbQ7QZfV091+ElxjymVM/Huyeh4jEp6oyKpDoi0r4d2ufRuzdjn7Lll
 AK455XuBa4jqqRbCwhqIny/22yZw6e36dAQZcli+wt9xGP2sZPberkFJw9RWVDWglXcqnO2zZG
 NI1a+ThcQfvJA8r0A7Bzb+owFFUlreODvI7ARyBHY6ChIXLo12lEa8GkxS2iEy09K9q07kp2st
 sPU04A/37GKsHI4QxoJ5n3ERS9H84tWVNvbnBqkDCC/c6E7HWHTPYzGjgLm9KpatqIdRhSGTve
 ejA=
WDCIronportException: Internal
Received: from usg-ed-osssrv.wdc.com ([10.3.10.180])
 by uls-op-cesaip02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 29 Mar 2023 16:36:26 -0700
Received: from usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1])
 by usg-ed-osssrv.wdc.com (Postfix) with ESMTP id 4Pn2xk0f97z1RtVv
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 29 Mar 2023 16:36:25 -0700 (PDT)
Authentication-Results: usg-ed-osssrv.wdc.com (amavisd-new); dkim=pass
 reason="pass (just generated, assumed good)"
 header.d=opensource.wdc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=
 opensource.wdc.com; h=content-transfer-encoding:content-type
 :in-reply-to:organization:from:references:to:content-language
 :subject:user-agent:mime-version:date:message-id; s=dkim; t=
 1680132984; x=1682724985; bh=OTfJOB5+rMhAgZTM4ONfC4vlfxhMaFKo471
 fkAaO7qM=; b=iA9ESw9qffKNSFDF3ok630RxnvZTTZvVjdgrC2mRPtNl91Z08Bz
 yihPfnkjRCVwpEa0rK+4D2u0qY2ZZWg97ju7UgczJYkMP/zXgwrfenICqIC32DuN
 2Hd749Yv3hAEPotkgbr4/VjJEvWNMpSPZPwBnUUQR6kPTixNsWpB34Uws1Y9pYv2
 BfpUFjvU1jp89f0qVou4HeTsGlk6+qUWG0JnkHbEMPegxcMpkqmAElk36HNq8vKC
 3vtHABssq94tgixRpIzjnFDkx9+ZPQ7qPcOq+YMmOo5kQtPsrUishTIa5S7BDEKT
 Z9i1qF9rzU21n3jHrd3Ow6BexmdN0fTC9TQ==
X-Virus-Scanned: amavisd-new at usg-ed-osssrv.wdc.com
Received: from usg-ed-osssrv.wdc.com ([127.0.0.1])
 by usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1]) (amavisd-new,
 port 10026)
 with ESMTP id KtU7dNsWg7VA for <jfs-discussion@lists.sourceforge.net>;
 Wed, 29 Mar 2023 16:36:24 -0700 (PDT)
Received: from [10.225.163.116] (unknown [10.225.163.116])
 by usg-ed-osssrv.wdc.com (Postfix) with ESMTPSA id 4Pn2xd5qYJz1RtVm;
 Wed, 29 Mar 2023 16:36:21 -0700 (PDT)
Message-ID: <329c915b-b49d-491f-80ef-f4c9cdf80600@opensource.wdc.com>
Date: Thu, 30 Mar 2023 08:36:20 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Content-Language: en-US
To: Johannes Thumshirn <johannes.thumshirn@wdc.com>,
 Jens Axboe <axboe@kernel.dk>
References: <cover.1680108414.git.johannes.thumshirn@wdc.com>
 <339841b3b7ce6b2faf56bcaf9d92e298d878ef64.1680108414.git.johannes.thumshirn@wdc.com>
Organization: Western Digital Research
In-Reply-To: <339841b3b7ce6b2faf56bcaf9d92e298d878ef64.1680108414.git.johannes.thumshirn@wdc.com>
X-Spam-Score: -4.5 (----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 3/30/23 02:05,
 Johannes Thumshirn wrote: > The zram writeback
 code uses bio_add_page() to add a page to a newly > created bio.
 bio_add_page()
 can fail, but the return value is never > checked. > > [...] 
 Content analysis details:   (-4.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.141 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1phfLE-0001Xu-0t
Subject: Re: [Jfs-discussion] [PATCH 13/19] zram: use __bio_add_page for
 adding single page to bio
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
From: Damien Le Moal via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Damien Le Moal <damien.lemoal@opensource.wdc.com>
Cc: linux-raid@vger.kernel.org, Damien Le Moal <damien.lemoal@wdc.com>,
 cluster-devel@redhat.com, Chaitanya Kulkarni <kch@nvidia.com>,
 Andreas Gruenbacher <agruenba@redhat.com>, Song Liu <song@kernel.org>,
 Dave Kleikamp <shaggy@kernel.org>, Mike Snitzer <snitzer@kernel.org>,
 jfs-discussion@lists.sourceforge.net, Matthew Wilcox <willy@infradead.org>,
 Ming Lei <ming.lei@redhat.com>, linux-block@vger.kernel.org,
 linux-mm@kvack.org, dm-devel@redhat.com, David Sterba <dsterba@suse.com>,
 Hannes Reinecke <hare@suse.de>, linux-fsdevel@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>, linux-btrfs@vger.kernel.org,
 Bob Peterson <rpeterso@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On 3/30/23 02:05, Johannes Thumshirn wrote:
> The zram writeback code uses bio_add_page() to add a page to a newly
> created bio. bio_add_page() can fail, but the return value is never
> checked.
> 
> Use __bio_add_page() as adding a single page to a newly created bio is
> guaranteed to succeed.
> 
> This brings us a step closer to marking bio_add_page() as __must_check.
> 
> Signed-off-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>

Reviewed-by: Damien Le Moal <damien.lemoal@opensource.wdc.com>

-- 
Damien Le Moal
Western Digital Research



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
