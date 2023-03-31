Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8047A6D21DF
	for <lists+jfs-discussion@lfdr.de>; Fri, 31 Mar 2023 15:58:05 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1piFGE-00072B-RI;
	Fri, 31 Mar 2023 13:57:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <p.raghav@samsung.com>) id 1piE0N-00055u-QE
 for jfs-discussion@lists.sourceforge.net;
 Fri, 31 Mar 2023 12:37:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=References:In-Reply-To:Content-Type:MIME-Version:
 Message-ID:Subject:CC:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=sy3H02Yklmpq02OAKYlLX6Sc0hq4r61yxZwpspFLrV4=; b=bc26Alw2iCCZ+85K3BRjnXo9JY
 7p1aea0kNJSTaj7AhdRnrALC4XGfaGGDEcWFSTHvCmv6ukj3c/w0oofrbjO+oPoAxUxcPpo3N4q5D
 Sb0xLKl6ci1317sebOtgwYr9+pDvNi6Dbbzt9zJrYRUlDKEWecjgFuv54OqoOgjfWDQM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=References:In-Reply-To:Content-Type:MIME-Version:Message-ID:Subject:CC:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=sy3H02Yklmpq02OAKYlLX6Sc0hq4r61yxZwpspFLrV4=; b=Q/E7lIikVFPUXaRpIf/8aQm3SO
 Vc/0EVmiv1flxYzVrDC4tYVcWB5X0qLRFYmnjvN3HsilKN6ePrQeCIvzp/iw9iP2ZszeAJxsxIFTl
 AS7rX3sTgC5SG93Ujk6P1ArZYHc/NAuKQszVqb+p6mYLRCbcP3llYP4sod+S+dzffyrY=;
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1piE0L-00AqY9-HG for jfs-discussion@lists.sourceforge.net;
 Fri, 31 Mar 2023 12:37:18 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20230331122829euoutp02de4cfcc001e7ee9098973a75d1789cc8~RgMKUY_Yp0680506805euoutp02R
 for <jfs-discussion@lists.sourceforge.net>;
 Fri, 31 Mar 2023 12:28:29 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20230331122829euoutp02de4cfcc001e7ee9098973a75d1789cc8~RgMKUY_Yp0680506805euoutp02R
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1680265709;
 bh=sy3H02Yklmpq02OAKYlLX6Sc0hq4r61yxZwpspFLrV4=;
 h=Date:From:To:CC:Subject:In-Reply-To:References:From;
 b=rAnn6XpyV73weoWDRzxGpTgYBjyYe+RSOigzQQxyx0iwWEpV6c73java4tfeFH5aK
 kc1nBpN7O4POvrSTLrwhr51c7/FIj6+6bBKORkEjs/SIVJ3u8iUzKedlNUn/DBNAJk
 Jvy/OpI1ahxBBeir/gnLTuruCyxoUMLeHCqqzZYM=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20230331122828eucas1p2221a593a3ccb1b434b1da25a71533046~RgMKBh0II1636116361eucas1p2T;
 Fri, 31 Mar 2023 12:28:28 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 69.8A.09966.CE1D6246; Fri, 31
 Mar 2023 13:28:28 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20230331122828eucas1p18e0bbbda45a6955f59fc82b29f42a8bb~RgMJifuNI3167431674eucas1p1Z;
 Fri, 31 Mar 2023 12:28:28 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20230331122828eusmtrp201ce7800d6dbc2a659cda30347164a5b~RgMJhvdcU3136031360eusmtrp2K;
 Fri, 31 Mar 2023 12:28:28 +0000 (GMT)
X-AuditID: cbfec7f4-d39ff700000026ee-91-6426d1ece90a
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 69.7F.09583.CE1D6246; Fri, 31
 Mar 2023 13:28:28 +0100 (BST)
Received: from CAMSVWEXC02.scsc.local (unknown [106.1.227.72]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20230331122828eusmtip254994547f7b3b5d847ad1a6ec553e362~RgMJVz-6Q2915729157eusmtip2I;
 Fri, 31 Mar 2023 12:28:28 +0000 (GMT)
Received: from localhost (106.110.32.140) by CAMSVWEXC02.scsc.local
 (2002:6a01:e348::6a01:e348) with Microsoft SMTP Server (TLS) id 15.0.1497.2;
 Fri, 31 Mar 2023 13:28:27 +0100
Date: Fri, 31 Mar 2023 14:20:11 +0200
From: Pankaj Raghav <p.raghav@samsung.com>
To: Johannes Thumshirn <johannes.thumshirn@wdc.com>
Message-ID: <20230331122011.nq27xmkqmajvx6a5@blixen>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <339841b3b7ce6b2faf56bcaf9d92e298d878ef64.1680108414.git.johannes.thumshirn@wdc.com>
X-Originating-IP: [106.110.32.140]
X-ClientProxiedBy: CAMSVWEXC01.scsc.local (2002:6a01:e347::6a01:e347) To
 CAMSVWEXC02.scsc.local (2002:6a01:e348::6a01:e348)
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrNKsWRmVeSWpSXmKPExsWy7djP87pvLqqlGJz9q2+xbd1udovVd/vZ
 LE6ufsxm0dr+jcli77vZrBYXfjQyWexZNInJYuXqo0wWFz+2Mln87brHZPH06iygklvaFpce
 r2C32LP3JIvFvTX/WS3a5+9itDg0uZnJomt2K5vF7Ts/mC1O3JK2OL78L5vF7x9z2BzEPDav
 0PK4fLbUY9OqTjaPTZ8msXvsXvCZyWP3zQY2j97md2we7/ddZfNYv+Uqi8fm09UenzfJebQf
 6GYK4InisklJzcksSy3St0vgythycCtLwXyWik/vPzM2MO5i7mLk5JAQMJHYuec4YxcjF4eQ
 wApGiaZrv9kgnC+MEo9unYdyPjNKfDj9hgWm5d6kN0wQieVAVb9OMMFV/fiwih3C2cIocfja
 e0aQFhYBVYlfS5uAEhwcbAJaEo2d7CBhEQFjiSvfF7KA1DMLHGWVOPL6H1i9sECwRMenL2A2
 L9C6JSuuMUHYghInZz4BO4NZQEdiwe5PbCAzmQWkJZb/4wAJcwokSlycchrqOSWJhs1noK6u
 lTi15RbYoRIC/zglHn1dCVXkItHa9wmqSFji1fEt7BC2jMT/nfOZIOxqiac3fjNDNLcwSvTv
 XA+2WELAWqLvTA5EjaPEh+ermCDCfBI33gpCnMknMWnbdGaIMK9ER5sQRLWaxI6mrYwTGJVn
 IXlsFpLHZiE8toCReRWjeGppcW56arFRXmq5XnFibnFpXrpecn7uJkZg+jz97/iXHYzLX33U
 O8TIxMF4iFGCg1lJhLfQWDVFiDclsbIqtSg/vqg0J7X4EKM0B4uSOK+27clkIYH0xJLU7NTU
 gtQimCwTB6dUA9Pi3qdGz/s9tdgZs7dEvDzRoeu3cuJflcIf9xLN3mTPX8cj/7FtMWf84VOm
 W/efD3GNO5Z/98G7F5PerH7WciD4WlaD6/81qq13dyu4XzNYNfG6zdlKkTVslx/IvYvUvvk6
 VKPql75r/QPjmcfO5q2t3ffzT7b5pmntInvCrBI2nQnJvHE8eJXfN/60FEON8mWix5VYFJ9+
 Cfp+8qnK109Lrx2rmDhF5Fd8+/1zpjFGjJGXtZLyXZ+dn/drKu/rlokhX47Ht6xdmyg8id1r
 9c91sRxf5c/cEC/ynjildvOrUmXnrzrxC9Z8mLe+bNpNxQW7m/uO757mwXbvi/L6OcHHtI87
 bPlgJeP9tn5GQi+jqhJLcUaioRZzUXEiAMYrDlwOBAAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprJKsWRmVeSWpSXmKPExsVy+t/xe7pvLqqlGKycLGCxbd1udovVd/vZ
 LE6ufsxm0dr+jcli77vZrBYXfjQyWexZNInJYuXqo0wWFz+2Mln87brHZPH06iygklvaFpce
 r2C32LP3JIvFvTX/WS3a5+9itDg0uZnJomt2K5vF7Ts/mC1O3JK2OL78L5vF7x9z2BzEPDav
 0PK4fLbUY9OqTjaPTZ8msXvsXvCZyWP3zQY2j97md2we7/ddZfNYv+Uqi8fm09UenzfJebQf
 6GYK4InSsynKLy1JVcjILy6xVYo2tDDSM7S00DMysdQzNDaPtTIyVdK3s0lJzcksSy3St0vQ
 y9hycCtLwXyWik/vPzM2MO5i7mLk5JAQMJG4N+kNUxcjF4eQwFJGiZndO5kgEjISn658ZIew
 hSX+XOtigyj6yChx4v4mdghnC6PExBefwKpYBFQlfi1tArI5ONgEtCQaO8HCIgLGEle+L2QB
 qWcWOMoq8evLRVaQhLBAsMStLzsYQWxeoDOWrLgGdcYURolFnyezQiQEJU7OfMICYjML6Egs
 2P2JDWQBs4C0xPJ/HCBhToFEiYtTTkO9oyTRsPkMC4RdK/H57zPGCYzCs5BMmoVk0iyESQsY
 mVcxiqSWFuem5xYb6RUn5haX5qXrJefnbmIEppFtx35u2cG48tVHvUOMTByMhxglOJiVRHgL
 jVVThHhTEiurUovy44tKc1KLDzGaAoNiIrOUaHI+MJHllcQbmhmYGpqYWRqYWpoZK4nzehZ0
 JAoJpCeWpGanphakFsH0MXFwSjUw5R9bcLzD4NIWde1u7fOP/SucVqQIqGQuy140dyW/WHqq
 LouScp+Uk/cjIYskyYc3meaefvvsxeqzCVukT/42ktXKLKvaGeKvGOnWpb30lf3GQmc5lquX
 6xidCvd/Ed26rWu15O9re02m27Hl/Jzt9fak9NRiwTvVnnm88wXCv7H4HL6+K0Q2Vuf/xLeb
 G66KfwsSzK+e2sApdtD15JSgMG5bwdPnb802a90RsdQo7mWV6NP3pQKzlJZfVltyOsb47fYf
 /vzvQhosjrW8Sywu81/1Kf5+xkPhzNl7vvfum/nqee4ClnvHJcKi0uqSPvy3FzYpehp2xcZ7
 V05ct/838c3ym1sf8H1L49i80iVGiaU4I9FQi7moOBEABax/UawDAAA=
X-CMS-MailID: 20230331122828eucas1p18e0bbbda45a6955f59fc82b29f42a8bb
X-Msg-Generator: CA
X-RootMTR: 20230331122828eucas1p18e0bbbda45a6955f59fc82b29f42a8bb
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20230331122828eucas1p18e0bbbda45a6955f59fc82b29f42a8bb
References: <cover.1680108414.git.johannes.thumshirn@wdc.com>
 <339841b3b7ce6b2faf56bcaf9d92e298d878ef64.1680108414.git.johannes.thumshirn@wdc.com>
 <CGME20230331122828eucas1p18e0bbbda45a6955f59fc82b29f42a8bb@eucas1p1.samsung.com>
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Mar 29, 2023 at 10:05:59AM -0700, Johannes Thumshirn
 wrote: > The zram writeback code uses bio_add_page() to add a page to a newly
 > created bio. bio_add_page() can fail, but the return value [...] 
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.12 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1piE0L-00AqY9-HG
X-Mailman-Approved-At: Fri, 31 Mar 2023 13:57:44 +0000
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
Cc: Jens Axboe <axboe@kernel.dk>, linux-raid@vger.kernel.org,
 Damien Le Moal <damien.lemoal@wdc.com>, cluster-devel@redhat.com,
 Chaitanya Kulkarni <kch@nvidia.com>, Andreas Gruenbacher <agruenba@redhat.com>,
 Song Liu <song@kernel.org>, Dave Kleikamp <shaggy@kernel.org>,
 Mike Snitzer <snitzer@kernel.org>, jfs-discussion@lists.sourceforge.net,
 Matthew Wilcox <willy@infradead.org>, Ming Lei <ming.lei@redhat.com>,
 linux-block@vger.kernel.org, linux-mm@kvack.org, dm-devel@redhat.com,
 David Sterba <dsterba@suse.com>, Hannes Reinecke <hare@suse.de>,
 linux-fsdevel@vger.kernel.org, Christoph Hellwig <hch@lst.de>,
 linux-btrfs@vger.kernel.org, Bob Peterson <rpeterso@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Wed, Mar 29, 2023 at 10:05:59AM -0700, Johannes Thumshirn wrote:
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

Looks good,
Reviewed-by: Pankaj Raghav <p.raghav@samsung.com>


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
