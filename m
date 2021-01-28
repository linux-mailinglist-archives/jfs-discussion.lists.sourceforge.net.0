Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EDA3030761C
	for <lists+jfs-discussion@lfdr.de>; Thu, 28 Jan 2021 13:28:43 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1l56Ou-0000ZK-NJ; Thu, 28 Jan 2021 12:27:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <rjwysocki@gmail.com>) id 1l54RF-0002TU-Jq
 for jfs-discussion@lists.sourceforge.net; Thu, 28 Jan 2021 10:22:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HDfQ7EgSz4He6IVrUzqy89nGy356H19n/4Ap6Knawyw=; b=P5IzsONqsGPycETSXaZua28zGO
 PhovX4HORZzjEPBODbQNYgFoXxETpXuKwgL45Y5Q3wjkHhJv7IBy4J5IKwcLMwPgHu/0tyBKj9h0J
 TueDtGhoQVt9KQ0C8UNH7Q7VrX+Q4Ytb3bJWGWxWBskVwPJJ1lvejblxFq5ULJO7kyiM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=HDfQ7EgSz4He6IVrUzqy89nGy356H19n/4Ap6Knawyw=; b=eFMdP1ibUhztA4CvlQvJA8KCk3
 j5fAuC31CMf0D1SRx8rlZT6hyUfsLt1oyF/UT+zFaQ8ubzybtblbLs+Jf4mzSWtupz1UOJu4/YII6
 9+oXvBosJWdKY7pEvOzZzrRTAL5Z/ja5SqKzY6kwUghviALRhV+YJX6sE6UpOOpc7LjA=;
Received: from mail-ot1-f48.google.com ([209.85.210.48])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1l54R0-00H7dx-QV
 for jfs-discussion@lists.sourceforge.net; Thu, 28 Jan 2021 10:22:08 +0000
Received: by mail-ot1-f48.google.com with SMTP id 63so4696616oty.0
 for <jfs-discussion@lists.sourceforge.net>;
 Thu, 28 Jan 2021 02:21:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=HDfQ7EgSz4He6IVrUzqy89nGy356H19n/4Ap6Knawyw=;
 b=gWXv2tpxAQWj2bjsYzzsThQKGM04RGb2umdhuqYEXT3lHfDACE1D09Ga2RlQiJ51Fi
 Uc1yFzoMHgAlxnBA/tMOCWaP7Kct1tF7KwsiA2xnyoCNEe6OjKt9bNugvU6qvDO/AiY7
 QEtBeMn/Fk5WiBHO3izPcHdrVrEqkRyK/XRZuG+4WBIM1PbtBDCvbIDukVmXWxS2iV9+
 2JmOLy8zrtm/4E6JaEn9FrNvq+T1gVn0uH+H0SNLT9Qbo8lSvrMOB8wRvpahhB57W6II
 RMl7698Q2anG9QKT0P+TVK0btRo+i71qqmH68x5QmwVw/eqRRv5cDPdxxV4nXgWklU4P
 iksQ==
X-Gm-Message-State: AOAM530wnQWgz1YmiCQDnF8p5tsA2SqCqE3SzjRlYAv4qC5qfQdK29Oa
 t9t4ayOOZXvAyYBS3UhtbGgGEMz0YqMG6MjGwJk=
X-Google-Smtp-Source: ABdhPJwJviHVEMHN6dwg9pHl9sFzPeOTWi/Tyw7MUMRzUkqGbWVHXybuLc31QSYFbmu849bxozre+7WWIBRJddZRpNc=
X-Received: by 2002:a05:6830:2313:: with SMTP id
 u19mr11117098ote.321.1611829309173; 
 Thu, 28 Jan 2021 02:21:49 -0800 (PST)
MIME-Version: 1.0
References: <20210128071133.60335-1-chaitanya.kulkarni@wdc.com>
 <20210128071133.60335-30-chaitanya.kulkarni@wdc.com>
In-Reply-To: <20210128071133.60335-30-chaitanya.kulkarni@wdc.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Thu, 28 Jan 2021 11:21:36 +0100
Message-ID: <CAJZ5v0h01e4LgV0c5FxLorcc6iFW2LVzC=hJcd7LNAJ6D0E8jg@mail.gmail.com>
To: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (rjwysocki[at]gmail.com)
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: wdc.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.48 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.48 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
X-Headers-End: 1l54R0-00H7dx-QV
X-Mailman-Approved-At: Thu, 28 Jan 2021 12:27:47 +0000
Subject: Re: [Jfs-discussion] [RFC PATCH 29/34] power/swap: use bio_new in
 hib_submit_io
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
Cc: shaggy@kernel.org, jfs-discussion@lists.sourceforge.net,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>,
 Mike Snitzer <snitzer@redhat.com>, Takashi Iwai <tiwai@suse.de>,
 djwong@kernel.org, linux-nvme <linux-nvme@lists.infradead.org>,
 Philipp Reisner <philipp.reisner@linbit.com>,
 Linux Memory Management List <linux-mm@kvack.org>, dm-devel@redhat.com,
 target-devel@vger.kernel.org, Pavel Machek <pavel@ucw.cz>,
 Alex Shi <alex.shi@linux.alibaba.com>, Christoph Hellwig <hch@lst.de>,
 Alasdair Kergon <agk@redhat.com>, drbd-dev@lists.linbit.com,
 naohiro.aota@wdc.com, linux-nilfs@vger.kernel.org,
 Sagi Grimberg <sagi@grimberg.me>,
 "open list:TARGET SUBSYSTEM" <linux-scsi@vger.kernel.org>,
 Mark Fasheh <mark@fasheh.com>, Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>,
 osandov@fb.com, Eric Biggers <ebiggers@kernel.org>,
 xen-devel@lists.xenproject.org, ngupta@vflare.org,
 Len Brown <len.brown@intel.com>, Linux PM <linux-pm@vger.kernel.org>,
 Hannes Reinecke <hare@suse.de>, Ming Lei <ming.lei@redhat.com>,
 linux-block@vger.kernel.org, Tejun Heo <tj@kernel.org>,
 linux-fscrypt@vger.kernel.org, Al Viro <viro@zeniv.linux.org.uk>,
 jefflexu@linux.alibaba.com, jaegeuk@kernel.org,
 Joel Becker <jlbec@evilplan.org>, konishi.ryusuke@gmail.com,
 Bart Van Assche <bvanassche@acm.org>, Jens Axboe <axboe@kernel.dk>,
 damien.lemoal@wdc.com, Ted Ts'o <tytso@mit.edu>,
 Andrew Morton <akpm@linux-foundation.org>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Joseph Qi <joseph.qi@linux.alibaba.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-xfs@vger.kernel.org, Minchan Kim <minchan@kernel.org>,
 linux-fsdevel@vger.kernel.org, Lars Ellenberg <lars.ellenberg@linbit.com>,
 jth@kernel.org, asml.silence@gmail.com, ocfs2-devel@oss.oracle.com,
 roger.pau@citrix.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Thu, Jan 28, 2021 at 8:21 AM Chaitanya Kulkarni
<chaitanya.kulkarni@wdc.com> wrote:
>

Please explain in the changelog why making this change is a good idea.

> Signed-off-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
> ---
>  kernel/power/swap.c | 7 +++----
>  1 file changed, 3 insertions(+), 4 deletions(-)
>
> diff --git a/kernel/power/swap.c b/kernel/power/swap.c
> index c73f2e295167..e92e36c053a6 100644
> --- a/kernel/power/swap.c
> +++ b/kernel/power/swap.c
> @@ -271,13 +271,12 @@ static int hib_submit_io(int op, int op_flags, pgoff_t page_off, void *addr,
>                 struct hib_bio_batch *hb)
>  {
>         struct page *page = virt_to_page(addr);
> +       sector_t sect = page_off * (PAGE_SIZE >> 9);
>         struct bio *bio;
>         int error = 0;
>
> -       bio = bio_alloc(GFP_NOIO | __GFP_HIGH, 1);
> -       bio->bi_iter.bi_sector = page_off * (PAGE_SIZE >> 9);
> -       bio_set_dev(bio, hib_resume_bdev);
> -       bio_set_op_attrs(bio, op, op_flags);
> +       bio = bio_new(hib_resume_bdev, sect, op, op_flags, 1,
> +                     GFP_NOIO | __GFP_HIGH);
>
>         if (bio_add_page(bio, page, PAGE_SIZE, 0) < PAGE_SIZE) {
>                 pr_err("Adding page to bio failed at %llu\n",
> --
> 2.22.1
>


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
