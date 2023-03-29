Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C4306CF724
	for <lists+jfs-discussion@lfdr.de>; Thu, 30 Mar 2023 01:31:21 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1phfFu-0006dB-6k;
	Wed, 29 Mar 2023 23:31:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=44543d287=damien.lemoal@opensource.wdc.com>)
 id 1phfFn-0006co-Mk for jfs-discussion@lists.sourceforge.net;
 Wed, 29 Mar 2023 23:30:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YBKSTZB4DL7oK2OqUjnDZlFWj9rbhqF7ilesNPuPEx8=; b=KmEHVBWvt7qfa2i24ScJ1uoW21
 fn/yPFQRCYLvOhJqmGLynhWE4eD0hIceqQEdevF5gpWG3xMVcGxwoXAh2dA3rGlA8WwslSsCwh7Ga
 M+cPSirAckP8cUtVZNg//IIrcw6yUWBrtAOMhAPp5ks8zk8amvimCxhLZi6Vrjoq5dNs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=YBKSTZB4DL7oK2OqUjnDZlFWj9rbhqF7ilesNPuPEx8=; b=IqECwpfC/g6qYIukBX0gz19puh
 f7lKKa3M3/bJJJeQHvmIfi/E6usoV4DrZhwxEHJ9CyHpHbRvbuOJlN5wElj+eH9zWMAJwt5mMJPZB
 2eN7RkaujniFjf/x9pZnv6ESMaem2bR8RJ4YlEgKlD3bY6mg0xfE5U4OXimTjDUzAnlM=;
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1phfFf-0001PD-Se for jfs-discussion@lists.sourceforge.net;
 Wed, 29 Mar 2023 23:30:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1680132647; x=1711668647;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=gcC/1POcjLEFAIcEMXu/G07oqNzLEW5v95BGotn97v8=;
 b=X46PoIHfoxFJTkL7T1NRT3JV5X2ClGs22yVlR5v4hj7uEFDuGzEpVPDn
 lusyCgNI2GS0BrMsK12gjLy80108RUJWpjjSFwu2rUWB8YV0+119b/5vm
 8Wq6qx2NiUIx8KtdMXd/wrDuLtYudp5vz1lLWmHkmTyxNWurEbfAqFWj5
 bheX8l2l9WRpsBy2VcGRm6qSYNAOjwVrD6PiMOzGndIq/fk1C8pN0SQ/1
 nLan2A989L85CiaEu//s1Zo5l3Y1ZGWWbclcyFCObWKSKaHx+Zvb046w2
 BYhpD2RkUETyANJ5c13qmHgRcoX+WbrVd/Jk47DOKi0QCszA2wjqoNy9Z Q==;
X-IronPort-AV: E=Sophos;i="5.98,301,1673884800"; d="scan'208";a="225113436"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 30 Mar 2023 07:30:34 +0800
IronPort-SDR: GoAZkBcRXPeGOkXrcgFq9YslNy1JCvlpaaShP5UY9aMuSmQe+FjyXwZb8MBoIS5D0Sj/RrZUgk
 +Q0vrCbTWib4ChVh5IffJOUGQHioL4P9i6uIoTNP8ZaEYWonSBzYlyOmIF9ic4voO/3XPn/V0B
 +Or39c4G24+bp4yWzBhK2Bf58BdFoyFr6RcUNST9bnTaRBthwsUcPVR9Hsv8dkmQfNaektbwCN
 19UdQtIs2bqZd6o5H/2yeuMTiapF5QsC+ngh/iPw0rQAtdH8OLzLmDMX+PBMwdkqSA0/AOb6wU
 hQc=
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 29 Mar 2023 15:41:02 -0700
IronPort-SDR: 5uZyS/1UskxTAYC3r35l025RgyuwMYQS10N/wEJpEYlqZlMD53BVQWQqbeYfcBi6Zz1X9nMyiw
 VHAG/t7BZN9IVCkGAYwreR4tw99gNfhxjaCwcYDzSi1i4ZWIwP4hur6eQg3JYI53zpZWEEWIZY
 pSsCSt/zyk2mw9q1dY/LBhA61/YGvAZO5rUVkDpiTZGH6x99TiNJFARpNRFRD6dp9XttPCG+3b
 8JHTzekbd94PHinK39MrAP64z74vpfGnaHa+a2kDz+bK2WB5ASVwWQOoSv4joVBD46nNuXwTS0
 E0E=
WDCIronportException: Internal
Received: from usg-ed-osssrv.wdc.com ([10.3.10.180])
 by uls-op-cesaip02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 29 Mar 2023 16:30:34 -0700
Received: from usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1])
 by usg-ed-osssrv.wdc.com (Postfix) with ESMTP id 4Pn2px5Px5z1RtW3
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 29 Mar 2023 16:30:33 -0700 (PDT)
Authentication-Results: usg-ed-osssrv.wdc.com (amavisd-new); dkim=pass
 reason="pass (just generated, assumed good)"
 header.d=opensource.wdc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=
 opensource.wdc.com; h=content-transfer-encoding:content-type
 :in-reply-to:organization:from:references:to:content-language
 :subject:user-agent:mime-version:date:message-id; s=dkim; t=
 1680132632; x=1682724633; bh=gcC/1POcjLEFAIcEMXu/G07oqNzLEW5v95B
 Gotn97v8=; b=PoG50HzSd9Sqa3seuCovhxqh1ZZj1r8rRM7hqMVC1Pzrs/Mo8xn
 s2FvS3V47vL7XwXAfrvFNgGFN1/MXXWe6cQDyUrs+uLkmyMiu1ovYiEFYowQ7TUT
 wfa4tqt19MVPZuqNtDeGKyc7ne+kGMaZwH8cyCYGntsekO4jGotJoRJD6DLiPGwu
 os4aw6OxIJRE6l+V9kLg+RXaflepH+nb+xTPHi+u7Tkml5O8gOxvKnBM17WRQIbv
 mQdVhvyFEVMsEnqG8QNoHfx3vNLFW7ITiVKbEkKnZMEik4uxC9t7Y7t1oltQZe94
 VoGnC9Q9Nzo4gA9ee6x9ZTsaAiXIUcMppRw==
X-Virus-Scanned: amavisd-new at usg-ed-osssrv.wdc.com
Received: from usg-ed-osssrv.wdc.com ([127.0.0.1])
 by usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1]) (amavisd-new,
 port 10026)
 with ESMTP id WHQK-Fqv803t for <jfs-discussion@lists.sourceforge.net>;
 Wed, 29 Mar 2023 16:30:32 -0700 (PDT)
Received: from [10.225.163.116] (unknown [10.225.163.116])
 by usg-ed-osssrv.wdc.com (Postfix) with ESMTPSA id 4Pn2pt0C0hz1RtVm;
 Wed, 29 Mar 2023 16:30:29 -0700 (PDT)
Message-ID: <4e4aa0e7-f222-f269-1b5c-1abb3a7179e7@opensource.wdc.com>
Date: Thu, 30 Mar 2023 08:30:28 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Content-Language: en-US
To: Johannes Thumshirn <johannes.thumshirn@wdc.com>,
 Jens Axboe <axboe@kernel.dk>
References: <cover.1680108414.git.johannes.thumshirn@wdc.com>
 <4a2c46dc0e217a9fb6b9f32d460498a5feb8b67b.1680108414.git.johannes.thumshirn@wdc.com>
Organization: Western Digital Research
In-Reply-To: <4a2c46dc0e217a9fb6b9f32d460498a5feb8b67b.1680108414.git.johannes.thumshirn@wdc.com>
X-Spam-Score: -4.5 (----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 3/30/23 02:05, Johannes Thumshirn wrote: > dm-zoned uses
 bio_add_page() for adding a single page to a freshly created > metadata bio.
 > > Use __bio_add_page() instead as adding a single page to a n [...] 
 Content analysis details:   (-4.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.42 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1phfFf-0001PD-Se
Subject: Re: [Jfs-discussion] [PATCH 03/19] dm: dm-zoned: use __bio_add_page
 for adding single metadata page
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
> dm-zoned uses bio_add_page() for adding a single page to a freshly created
> metadata bio.
> 
> Use __bio_add_page() instead as adding a single page to a new bio is
> always guaranteed to succeed.
> 
> This brings us a step closer to marking bio_add_page() __must_check
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
