Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 511A56E7C35
	for <lists+jfs-discussion@lfdr.de>; Wed, 19 Apr 2023 16:20:20 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1pp8fA-0005QT-Ok;
	Wed, 19 Apr 2023 14:19:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <willy@infradead.org>) id 1pp8f9-0005QN-70
 for jfs-discussion@lists.sourceforge.net;
 Wed, 19 Apr 2023 14:19:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+pd4oKFh0oFb9+Iu8ItMUHH7+UjLES4jQSrWjxoNntk=; b=UnCkRTPMGrgPiAJL2+S/ua/GDt
 YmsKoq371NFeffZpVMebbFefmvkb5exfiEWEs9aVao8/gyfNe7uVUkBoxOeeWxcsmqaAq102uXzZT
 RxMDG36BUsadt1yZiJiD9as/8K7AaO0JL+ar5o4Fa2F0B6wIIrob8oAxmqE0OaD1niBc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+pd4oKFh0oFb9+Iu8ItMUHH7+UjLES4jQSrWjxoNntk=; b=JInYN5uiLOF/AbbsCQJMHnQAXP
 u6N+uYEnW+2xPxwbaM3YpBRJDDyjhHViuRjE9sjNX6jGf0+5HL5wR5UBRJJKFUmQemJqoBWvLVA+1
 rxYG5tCt1DfTROC0xwhrAD7xrS6T8ckpVZPGJGDXCj8ceb/wqBwkrvH2k1IBSse4/ffM=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pp8f4-0003UQ-Bz for jfs-discussion@lists.sourceforge.net;
 Wed, 19 Apr 2023 14:19:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=+pd4oKFh0oFb9+Iu8ItMUHH7+UjLES4jQSrWjxoNntk=; b=sagm8bmiUZxQFociF+FkwReyXx
 kqdFZHQr4HuDFcx1J+L17DKTxkCc08j6JFj3DANaq0ApL8Ik4omqR93XamI7fuhXfrq7qNJIm/A3i
 250Wr67KjPr1fBJqaSoXCq1K0pnZixmxYxb7sEU4Jy79RcYVlhRuhFtZ0f8IIDkj7aPo4UtyehLpx
 WAHMINlPz6T7j+3uE2+7rYA0dRJTgkTASjEFlsEQvNF4zVW/Udb1b2RIR2ZUrhpEyMg5i7oehPGtU
 IMknaJgbzbBX8AuJwMcwzwR8HwfFibwnD9fr/HyNgJLkTvwyBmETp0+3InlkyinLD32SHgvwXOyJk
 znUSSLTg==;
Received: from willy by casper.infradead.org with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1pp8ed-00DJck-8U; Wed, 19 Apr 2023 14:19:27 +0000
Date: Wed, 19 Apr 2023 15:19:27 +0100
From: Matthew Wilcox <willy@infradead.org>
To: Johannes Thumshirn <jth@kernel.org>
Message-ID: <ZD/4b9ZQ1YZRTgHL@casper.infradead.org>
References: <20230419140929.5924-1-jth@kernel.org>
 <20230419140929.5924-20-jth@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230419140929.5924-20-jth@kernel.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Apr 19, 2023 at 04:09:29PM +0200, Johannes Thumshirn
 wrote: > Now that all users of bio_add_page check for the return value, mark
 > bio_add_page as __must_check. Should probably add __must_check to
 bio_add_folio
 too? If this is really the way you want to go ... means we also need a
 __bio_add_folio().
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1pp8f4-0003UQ-Bz
Subject: Re: [Jfs-discussion] [PATCH v3 19/19] block: mark bio_add_page as
 __must_check
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
Cc: shaggy@kernel.org, jfs-discussion@lists.sourceforge.net, linux-mm@kvack.org,
 dm-devel@redhat.com, hch@lst.de, agruenba@redhat.com,
 Damien Le Moal <damien.lemoal@opensource.wdc.com>, cluster-devel@redhat.com,
 kch@nvidia.com, snitzer@kernel.org, ming.lei@redhat.com,
 linux-block@vger.kernel.org, rpeterso@redhat.com, hare@suse.de,
 dsterba@suse.com, axboe@kernel.dk, linux-raid@vger.kernel.org,
 damien.lemoal@wdc.com, song@kernel.org, johannes.thumshirn@wdc.com,
 linux-fsdevel@vger.kernel.org, linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Wed, Apr 19, 2023 at 04:09:29PM +0200, Johannes Thumshirn wrote:
> Now that all users of bio_add_page check for the return value, mark
> bio_add_page as __must_check.

Should probably add __must_check to bio_add_folio too?  If this is
really the way you want to go ... means we also need a
__bio_add_folio().


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
