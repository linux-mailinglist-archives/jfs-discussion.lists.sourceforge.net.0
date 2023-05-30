Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 42376716A6C
	for <lists+jfs-discussion@lfdr.de>; Tue, 30 May 2023 19:05:02 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1q42lk-0001mR-HF;
	Tue, 30 May 2023 17:04:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <msnitzer@redhat.com>) id 1q42lU-0001mC-Rt
 for jfs-discussion@lists.sourceforge.net;
 Tue, 30 May 2023 17:04:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Irk/8GUWmwLYWfm2Lio5fOal+y0GOgImfVphQa7iGfs=; b=dy6Fw87JmB4oSvQqZA/Cucm+Th
 Z4SFXcFkQ4HKcHg2jKmX8SAsywPAiWZNxZeiMlKyGDXkYhXQIc05eL11yffNAkKLw/8wCIvFC9Np7
 mnI3XQvnhrs5QIFcb3ERj32xCJ+lnDlg/wNY9CU49s/8r8MT88q9+Fo+ATWawO/Gdutg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Irk/8GUWmwLYWfm2Lio5fOal+y0GOgImfVphQa7iGfs=; b=Z6p/Sm7IQfs/4t32i3NL10zqMb
 yZ5SYPcOMQMD6sAMadtUggqM3DIbTCe7CE4GS6Hj5ugKn0ehMJNunhjC/MF40Ng7aXc/pLY4/Fr0c
 lnjHMg2a0ZZi7OnXCLlE0lFm6k75T8sb/oE4bwEYaAYNwVnCTfIxpeZqXKhaPmucP2sk=;
Received: from mail-ot1-f46.google.com ([209.85.210.46])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1q42lU-006iy1-A4 for jfs-discussion@lists.sourceforge.net;
 Tue, 30 May 2023 17:04:08 +0000
Received: by mail-ot1-f46.google.com with SMTP id
 46e09a7af769-6af6b5cf489so3524476a34.3
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 30 May 2023 10:04:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1685466242; x=1688058242;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Irk/8GUWmwLYWfm2Lio5fOal+y0GOgImfVphQa7iGfs=;
 b=Rzq//Vok673wh5+ocxbhrLiNxs/i1+wsZ9rzF1tSI83zobJlzsJ9wPKQ79QeRjeRaV
 DUHTKvACplohkjlxdNp7vxtOIIH/0Z2Q9MnZyN/tdmzZo/ORMeTkNf4Ek7wh7k3iI4sq
 1c3/gqB+Ht+445TeM77qTb9Ar+RioqjFzr27dVJ9sTHmDo0QYA7shLP/juNOVdCt4Ep2
 Lym63bfJQt4VNb4b8P6KEVlzj4pToXUb7oMZ77DsGsbmgE7+L0kuafn9uOh6By7IIAk1
 brtd0TVFGt7MHbTPUGCCQhqzJUwESMwUCm5MH3J5NvU6qaZTrgOaBuW6tu6p23okwzjA
 x2mg==
X-Gm-Message-State: AC+VfDy1JBW7bp0h3tFbdwZwAznVO0czTRFjNNtizb3VzIqDizXMu9w7
 t/Lb1FmCSLDaKu99XfAAi2jx8ebQvpTGUm6CqQ==
X-Google-Smtp-Source: ACHHUZ56MECtsjcewLbFVxD7Rkez1npKixqOW82Zsid/kEpDsAmjiM2JZkfOYT0pMaVRxjwqyQggQQ==
X-Received: by 2002:ad4:5b8d:0:b0:625:af4b:4162 with SMTP id
 13-20020ad45b8d000000b00625af4b4162mr2721624qvp.14.1685463016980; 
 Tue, 30 May 2023 09:10:16 -0700 (PDT)
Received: from localhost (pool-68-160-166-30.bstnma.fios.verizon.net.
 [68.160.166.30]) by smtp.gmail.com with ESMTPSA id
 w20-20020a0562140b3400b0062381fa97c5sm898935qvj.92.2023.05.30.09.10.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 30 May 2023 09:10:16 -0700 (PDT)
Date: Tue, 30 May 2023 12:10:15 -0400
From: Mike Snitzer <snitzer@kernel.org>
To: Johannes Thumshirn <johannes.thumshirn@wdc.com>
Message-ID: <ZHYf5+ocDL0hsud6@redhat.com>
References: <cover.1685461490.git.johannes.thumshirn@wdc.com>
 <e1c7ed59e2d2b69567ef2d9925fa997ecb7b4822.1685461490.git.johannes.thumshirn@wdc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e1c7ed59e2d2b69567ef2d9925fa997ecb7b4822.1685461490.git.johannes.thumshirn@wdc.com>
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, May 30 2023 at 11:49P -0400,
 Johannes Thumshirn <johannes.thumshirn@wdc.com>
 wrote: > Check if adding pages to clone bio fails and if it does retry with
 > reclaim. This mirrors the behaviour of page allocation in >
 crypt_alloc_buffer().
 Content analysis details:   (0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.46 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.46 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1q42lU-006iy1-A4
Subject: Re: [Jfs-discussion] [PATCH v6 16/20] dm-crypt: check if adding
 pages to clone bio fails
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
Cc: Jens Axboe <axboe@kernel.dk>, Dave Kleikamp <shaggy@kernel.org>,
 jfs-discussion@lists.sourceforge.net, Chaitanya Kulkarni <kch@nvidia.com>,
 Andreas Gruenbacher <agruenba@redhat.com>, linux-mm@kvack.org,
 linux-fsdevel@vger.kernel.org,
 Damien Le Moal <damien.lemoal@opensource.wdc.com>, linux-block@vger.kernel.org,
 Damien Le Moal <damien.lemoal@wdc.com>, Matthew Wilcox <willy@infradead.org>,
 Ming Lei <ming.lei@redhat.com>, cluster-devel@redhat.com,
 Song Liu <song@kernel.org>, dm-devel@redhat.com,
 Mikulas Patocka <mpatocka@redhat.com>, Bob Peterson <rpeterso@redhat.com>,
 linux-raid@vger.kernel.org, Christoph Hellwig <hch@lst.de>,
 gouhao@uniontech.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Tue, May 30 2023 at 11:49P -0400,
Johannes Thumshirn <johannes.thumshirn@wdc.com> wrote:

> Check if adding pages to clone bio fails and if it does retry with
> reclaim. This mirrors the behaviour of page allocation in
> crypt_alloc_buffer().

Nope.

> This way we can mark bio_add_pages as __must_check.
> 
> Reviewed-by: Damien Le Moal <damien.lemoal@opensource.wdc.com>
> Signed-off-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>

The above patch header doesn't reflect the code.

I also think __bio_add_page should be used, like my racey reply to
Mikulas vs your v6 patchbomb said, please see:
https://listman.redhat.com/archives/dm-devel/2023-May/054388.html

Thanks,
Mike

> ---
>  drivers/md/dm-crypt.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/md/dm-crypt.c b/drivers/md/dm-crypt.c
> index 8b47b913ee83..0dd231e61757 100644
> --- a/drivers/md/dm-crypt.c
> +++ b/drivers/md/dm-crypt.c
> @@ -1693,7 +1693,10 @@ static struct bio *crypt_alloc_buffer(struct dm_crypt_io *io, unsigned int size)
>  
>  		len = (remaining_size > PAGE_SIZE) ? PAGE_SIZE : remaining_size;
>  
> -		bio_add_page(clone, page, len, 0);
> +		if (!bio_add_page(clone, page, len, 0)) {
> +			WARN_ONCE(1, "Adding page to bio failed\n");
> +			return NULL;
> +		}
>  
>  		remaining_size -= len;
>  	}
> -- 
> 2.40.1
> 
> --
> dm-devel mailing list
> dm-devel@redhat.com
> https://listman.redhat.com/mailman/listinfo/dm-devel
> 


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
