Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BE136CF71A
	for <lists+jfs-discussion@lfdr.de>; Thu, 30 Mar 2023 01:30:11 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1phfER-0006bA-N9;
	Wed, 29 Mar 2023 23:29:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=44543d287=damien.lemoal@opensource.wdc.com>)
 id 1phfEM-0006b0-Rb for jfs-discussion@lists.sourceforge.net;
 Wed, 29 Mar 2023 23:29:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BKGKUWWqulihARUFgnZfMKk27i10XHve0IMeGojBml4=; b=GJdZJ8Fcs8GIm/fA3vaJYw5FB0
 TxHZK7AdQsBjXVxWtwfabm6ridl1nCHBlzBdLD4w9PK1IExfsbusnOnlp0TPI4Alt8ShWPRkXNIog
 uJk2QeJw//MEbl+EaN7ZqpwGORkkRQi0o1HXjMTZLiIPMda/w1XZJJv5NmkDZs3Pb87g=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=BKGKUWWqulihARUFgnZfMKk27i10XHve0IMeGojBml4=; b=f8iVOyYSt189X785mNdbhVVqwe
 LpmE9V2z2ssFMkIXfxW6YPk0FZ6Pz+ezM3SDftBCpgD7YfZQNlqEYqF5d3BSMf3ZBlHR17T6w6fQC
 iVqLxrNr3SHr+BSpqhEt0EAnCUC+lVlMHYRFLC/8VLNqOIA+w6XifV2RFRqjL0e3WyzQ=;
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1phfEM-008uBv-AS for jfs-discussion@lists.sourceforge.net;
 Wed, 29 Mar 2023 23:29:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1680132566; x=1711668566;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=a+NVpLO2XQBp6iZs+ex8RERrDcsLfBZuQOxHVIXweuE=;
 b=EbgSPAnWjBTFW15xT9I1qsTc8bviBXcj7kZEFu/lKyJYXOCgc4WAGkCG
 Pvqkp45/prvdOuhGKBZipADDHx/tkbfj69X4A6t5qHGnwM3R/TLU3/ixU
 GGETbRuJgoPNVCf4VaDgQnxH8cd6SNoTx2rEL1LlNVLrp+VumCeypuA8w
 3sJ8LQXud698FY3XER6zEd0NWtvGvDMqaRBs5gC7eMzn5jxEUwkg7a7n2
 g4r7jBdvQfW+sIPVkC4DHH9RLg1aFpz1UYk5zALz12spzPi7q96VgF/PJ
 TxqWgi5tyINNLgJtwVj6UQD+m8RnocxclOuKdmKpyHHsF/rzlMJTTPYb4 A==;
X-IronPort-AV: E=Sophos;i="5.98,301,1673884800"; d="scan'208";a="231808371"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 30 Mar 2023 07:29:20 +0800
IronPort-SDR: kLa23MT73Mt9s+oih6iGvFVv45ykBvEgFRinshqU4nWUQLzRtkiFs+RKXPZ+sXLf25S+gpAiau
 5/sxOo/W3PxZMcQGl5yQmrXBhPvMYLpyAD4wS+bCV89t1Ek9aW3IeVXu2A4DAhrl7qwZgYWfYU
 swrYAkN6x3o5EslTHkSZkVnHyTborJeWqCFc57Kw17iM8r2rgkGScwoNGtO2NVc/e+sVq953BX
 9DYJvQ/WcYjhhNLbl2d72qKQbgdnYQLAYIhO7q4Kg58CnDqfprAX51NWODKzj6wT9QLnGS6/4C
 L5M=
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 29 Mar 2023 15:39:49 -0700
IronPort-SDR: 8eh7Jd/PuGvjYsmk9kvoQ/7kh801bNv9wxAbI/fRJ0UTnhJQrYeKSxYpUzZuO6Vk8wa4kPpz6o
 1Q5Sb82iKJIRdvFcWcYH/nbvvgC5hEQOuApPbDW3Bkf/2q+LrColBi+MaqS5Zh39eUQZIWSAVJ
 iemb6erRVyHABemJmG5WcG8EbKHYtZUlW31kPBwqcvtUjU0HP6FzfYlFAQ5ni2VdPGauLukF3O
 KNBThVAkx2DLbjk3qE0BIBwnzxQuroyqzbIpvBW664PL+ecH9jDagnUn2l/BuCIarU3phI3Cyf
 5/o=
WDCIronportException: Internal
Received: from usg-ed-osssrv.wdc.com ([10.3.10.180])
 by uls-op-cesaip02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 29 Mar 2023 16:29:20 -0700
Received: from usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1])
 by usg-ed-osssrv.wdc.com (Postfix) with ESMTP id 4Pn2nX0ZD1z1RtVq
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 29 Mar 2023 16:29:20 -0700 (PDT)
Authentication-Results: usg-ed-osssrv.wdc.com (amavisd-new); dkim=pass
 reason="pass (just generated, assumed good)"
 header.d=opensource.wdc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=
 opensource.wdc.com; h=content-transfer-encoding:content-type
 :in-reply-to:organization:from:references:to:content-language
 :subject:user-agent:mime-version:date:message-id; s=dkim; t=
 1680132559; x=1682724560; bh=a+NVpLO2XQBp6iZs+ex8RERrDcsLfBZuQOx
 HVIXweuE=; b=ey2f3kk11MiZ8fW2lBsVE6iqLCNprO9dciEEFxTXxN+atK95JFm
 GeL4fdna7sGh5OA3GyhTl6dDgM1awPXCw/oh0ur/h+S4H1cvx8Kq82Mw1Vc30qtY
 Nl4miDGl6PutBI7w7Ra2ULynQ0KRR2jk5wsVgu1BGOTa2pU2ZCzd8135B1HLnAHe
 bwtsBUtPmdPVK5BZusnYQ0LO/k1J1+NHVVOZRXZOFswL4vtTAlv9VzJwO/o1EGqz
 GHmTvBtmOh6QS/VJ7nCVRUApfB8c0Gn/ArE3TTpQ9cCBP794K0T3HJ8VeF0pNwdv
 NXyennxT++lsXIsW0TYKGI/+C0BsoiTHPVQ==
X-Virus-Scanned: amavisd-new at usg-ed-osssrv.wdc.com
Received: from usg-ed-osssrv.wdc.com ([127.0.0.1])
 by usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1]) (amavisd-new,
 port 10026)
 with ESMTP id 2Y5EOV6vFOdV for <jfs-discussion@lists.sourceforge.net>;
 Wed, 29 Mar 2023 16:29:19 -0700 (PDT)
Received: from [10.225.163.116] (unknown [10.225.163.116])
 by usg-ed-osssrv.wdc.com (Postfix) with ESMTPSA id 4Pn2nR75BJz1RtVm;
 Wed, 29 Mar 2023 16:29:15 -0700 (PDT)
Message-ID: <a3e8f1cb-4d76-dcb0-41a7-43b015d25dd4@opensource.wdc.com>
Date: Thu, 30 Mar 2023 08:29:14 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Content-Language: en-US
To: Johannes Thumshirn <johannes.thumshirn@wdc.com>,
 Jens Axboe <axboe@kernel.dk>
References: <cover.1680108414.git.johannes.thumshirn@wdc.com>
 <7849b142e073b20f033e5124a39080f59e5f19d2.1680108414.git.johannes.thumshirn@wdc.com>
Organization: Western Digital Research
In-Reply-To: <7849b142e073b20f033e5124a39080f59e5f19d2.1680108414.git.johannes.thumshirn@wdc.com>
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 3/30/23 02:05, Johannes Thumshirn wrote: > The swap code
 only adds a single page to a newly created bio. So use > __bio_add_page()
 to add the page which is guaranteed to succeed in this > case. > > [...] 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1phfEM-008uBv-AS
Subject: Re: [Jfs-discussion] [PATCH 01/19] swap: use __bio_add_page to add
 page to bio
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
> The swap code only adds a single page to a newly created bio. So use
> __bio_add_page() to add the page which is guaranteed to succeed in this
> case.
> 
> This brings us closer to marking bio_add_page() as __must_check.
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
