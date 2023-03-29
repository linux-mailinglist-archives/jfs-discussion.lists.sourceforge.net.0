Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A6BE76CF73A
	for <lists+jfs-discussion@lfdr.de>; Thu, 30 Mar 2023 01:32:51 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1phfHR-0006ZP-5l;
	Wed, 29 Mar 2023 23:32:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=44543d287=damien.lemoal@opensource.wdc.com>)
 id 1phfHO-0006ZJ-UB for jfs-discussion@lists.sourceforge.net;
 Wed, 29 Mar 2023 23:32:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PreQGm3kw+Yz5SCWCsPqxJKMJ8hKImN+FmWRLj6WIEM=; b=dbLApRCKCPPJbxquh4Lu6Id2AX
 xsg2qwoDqjD9+vlfnGEFzXvIOR7KMFtLiaazgjoqP4XhzCtPmxdaUh5ZpzGoNCyR5qJ/baOlUMltD
 PUPg4/xc+iD0eqj7KrIQDfd4y94Aw1Rl0VoR/ZlMyzUiuD4/suodv9ecWSLyr5Dy/Ve0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=PreQGm3kw+Yz5SCWCsPqxJKMJ8hKImN+FmWRLj6WIEM=; b=S3gFdodcPQFF04Ih0TycrNr1R9
 cziSCnebHOkGtE1A3gs15sclFoa4o2FNxlYagqF9A1lE+jSnu3ZO/CNAPx8qu/45YBbOfvzy5TFI3
 dS5lA+rgYMiy59KxciMUSTdNsRqTq/Yzdv1VbUeaZvNkzlDKESS1Tm9RH9m9dQDjSgoY=;
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1phfHN-008uHH-U0 for jfs-discussion@lists.sourceforge.net;
 Wed, 29 Mar 2023 23:32:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1680132753; x=1711668753;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=2oOVyR5FAdaST7S/q6ZiTs6JWIlaWidrp4+z9soxNLY=;
 b=o5TbUTP7yIuC1FL4cdoXa5z0ZiY3PFhcyl5f2AoWQf0Fan1HQgrS9zQk
 TjhJ+ti15hw3sMoTE0p0MOSAs91eHfiGF5XHzI6UNL/MKP5MAOvjiNKpS
 s9ThzjG7kqBaXHlnGaEC7gostzaEjk0MrDfmvqr89kJnrISPiJcGHTcWg
 Owgmo9NV2lDTML/h3kKhPgK2UkTGInbtMwiGVX4T3/0biaB8vqRZm/5Aq
 Tzu1xtlpEZmS+ynrzHK9b/JxDBp6KguGvOSAf6ouXJLtLcuXD6zdbyUZY
 NJupsgcBk+FQIjnk+wadPD7ZBZ75vD3Qb7QU5GKPWRvk0CCt5M6gcR8zY g==;
X-IronPort-AV: E=Sophos;i="5.98,301,1673884800"; d="scan'208";a="226828519"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 30 Mar 2023 07:32:18 +0800
IronPort-SDR: TrLOvUU5saXE+P55gqG+zBzPEZ7Lav4a+pn/17EvHBB8PoNTq5rwnPbhrXlqY8D1P0z1KoVXwA
 +DmjCWZzHPGebPLPrOtdyxQtkVFup510uxwcZA4HjdvKwrCXTEs1l9SC40nPFn8Emtjhk6F4r1
 BoJwqLUHAsyc9a80BKAe9IaT7HIlJbMjLG8nXJuVDn+5gQZ1a6lt4ImwlpLw4JMKW63rkWS8A2
 Uv8RYUMvSykqSOruYGIWMYQcU/WcT1EHV+C+nObjGWHddqFEuW1iiyYhm0g8+LFiCoMQmi3rv9
 8TU=
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 29 Mar 2023 15:48:27 -0700
IronPort-SDR: g8Inpr3YInJ2M19mpQLH6QpYAqvtKsKtafVDOo2GdVct+Pf8p3i9hFhgXcRGIWak//n+A91boy
 itPjq8Qewy37+Es/rewmmiCmlWx3TOUA2ViIzvnQS5Y0vtuMfb4yzv9D/vnaSMO1T9J0bbEQgO
 X8j9huT+xL+ZjTMDUOFtLvFxZNeqkrI4H0z08KCW9bEFB9cBDrzi3XgDHruzPpLVesVu4toeKo
 dVOGPkkUvKeIuX+vJlJL8pG3ghOhJ9eVwZEtEfWhYiWZS7VYc477Yhr1goauaJnlAitU6/jIob
 Eng=
WDCIronportException: Internal
Received: from usg-ed-osssrv.wdc.com ([10.3.10.180])
 by uls-op-cesaip02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 29 Mar 2023 16:32:18 -0700
Received: from usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1])
 by usg-ed-osssrv.wdc.com (Postfix) with ESMTP id 4Pn2rx6mVpz1RtVt
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 29 Mar 2023 16:32:17 -0700 (PDT)
Authentication-Results: usg-ed-osssrv.wdc.com (amavisd-new); dkim=pass
 reason="pass (just generated, assumed good)"
 header.d=opensource.wdc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=
 opensource.wdc.com; h=content-transfer-encoding:content-type
 :in-reply-to:organization:from:references:to:content-language
 :subject:user-agent:mime-version:date:message-id; s=dkim; t=
 1680132737; x=1682724738; bh=2oOVyR5FAdaST7S/q6ZiTs6JWIlaWidrp4+
 z9soxNLY=; b=CzTI5dmKz+cz+ra1W91v/vvm1q+lz4VpZaKNJ+ur2JgwvsLgkyz
 Ag9i1RXpGZQVCWt/gCi8lYEB9yivIbPnlXG6Hkz4MlXf5GZofs5pel3W7YhmzADn
 y+IYY/j6Lu2Sr8JsZyfjakqTUdNpz293fh+kzLI/QY1JbVuKx8S2nxmI8RNRgCP9
 5hP2QzGdEOFg9faNtfShxavTwxvhGcZzFc0K7rJLpJN7Iw5Q9BWad4Y+EX6dqTJt
 4igFqUNZin9rq2K2OW32dMdvOFsCycds3Ts6xqe6P+GtL3mkBpHqjGNtHRe59whO
 D7Vet14/ORgEglG520efiA8j4/Y3c2z2ESg==
X-Virus-Scanned: amavisd-new at usg-ed-osssrv.wdc.com
Received: from usg-ed-osssrv.wdc.com ([127.0.0.1])
 by usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1]) (amavisd-new,
 port 10026)
 with ESMTP id w3nWD4S9qpAJ for <jfs-discussion@lists.sourceforge.net>;
 Wed, 29 Mar 2023 16:32:17 -0700 (PDT)
Received: from [10.225.163.116] (unknown [10.225.163.116])
 by usg-ed-osssrv.wdc.com (Postfix) with ESMTPSA id 4Pn2rt2gL4z1RtVm;
 Wed, 29 Mar 2023 16:32:14 -0700 (PDT)
Message-ID: <a18998ed-49e2-739c-1f1a-c3d2375f4438@opensource.wdc.com>
Date: Thu, 30 Mar 2023 08:32:13 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Content-Language: en-US
To: Johannes Thumshirn <johannes.thumshirn@wdc.com>,
 Jens Axboe <axboe@kernel.dk>
References: <cover.1680108414.git.johannes.thumshirn@wdc.com>
 <492cbaf4225065838d25e04f8488528e50a52e3e.1680108414.git.johannes.thumshirn@wdc.com>
Organization: Western Digital Research
In-Reply-To: <492cbaf4225065838d25e04f8488528e50a52e3e.1680108414.git.johannes.thumshirn@wdc.com>
X-Spam-Score: -4.5 (----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 3/30/23 02:05, Johannes Thumshirn wrote: > The raid5 log
 metadata submission code uses bio_add_page() to add a page > to a newly
 created
 bio. bio_add_page() can fail, but the return value is > neve [...] 
 Content analysis details:   (-4.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1phfHN-008uHH-U0
Subject: Re: [Jfs-discussion] [PATCH 06/19] md: raid5-log: use
 __bio_add_page to add single page
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
Cc: linux-raid@vger.kernel.org, jfs-discussion@lists.sourceforge.net,
 cluster-devel@redhat.com, Chaitanya Kulkarni <kch@nvidia.com>,
 Andreas Gruenbacher <agruenba@redhat.com>, Song Liu <song@kernel.org>,
 Dave Kleikamp <shaggy@kernel.org>, Mike Snitzer <snitzer@kernel.org>,
 Matthew Wilcox <willy@infradead.org>, Ming Lei <ming.lei@redhat.com>,
 linux-block@vger.kernel.org, linux-mm@kvack.org, dm-devel@redhat.com,
 David Sterba <dsterba@suse.com>, Hannes Reinecke <hare@suse.de>,
 linux-fsdevel@vger.kernel.org, Christoph Hellwig <hch@lst.de>,
 linux-btrfs@vger.kernel.org, Bob Peterson <rpeterso@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On 3/30/23 02:05, Johannes Thumshirn wrote:
> The raid5 log metadata submission code uses bio_add_page() to add a page
> to a newly created bio. bio_add_page() can fail, but the return value is
> never checked.
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
