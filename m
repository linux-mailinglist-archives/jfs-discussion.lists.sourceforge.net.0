Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C49DD6EAB65
	for <lists+jfs-discussion@lfdr.de>; Fri, 21 Apr 2023 15:20:29 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ppqgA-0007wL-MO;
	Fri, 21 Apr 2023 13:19:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <senozhatsky@chromium.org>) id 1ppl7L-0008Iu-B4
 for jfs-discussion@lists.sourceforge.net;
 Fri, 21 Apr 2023 07:23:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=iCQQOrDHvv7muofgTvhggno9gmpvYe5WVwBD+zXre78=; b=kirAUZewD1avdhxEoen48ldOoE
 YpXkt1Sa2lKNP+8Z0YparAY5hyXqPjfEPCfbiKoaiGXixYBHfNERVA1wfdoWoYC1kncm4V8DQ0Vyb
 LsnkvABr1nX3OEk//ohnHMN9qvwQvLZn/J17ygEvcRnrAHG7AkvRIK+blJFYAWCelUg4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=iCQQOrDHvv7muofgTvhggno9gmpvYe5WVwBD+zXre78=; b=G+R8t13fqdQEkLHVvzQNDhYjAo
 pV0N18OF9yc+W51B/3daP5IFDR0KmKdJuYjtV/VKqFKj+Pzph+lBENmXMV41CiMkbXqsz3rBMrqo2
 uXugnaN58FVpNfs0WdKTLLzT82di5ZPlcx2i7lZ4ibfppAw+hnVQrOpbQ9jWBory4L3I=;
Received: from mail-ua1-f48.google.com ([209.85.222.48])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ppl7H-00EVoe-36 for jfs-discussion@lists.sourceforge.net;
 Fri, 21 Apr 2023 07:23:38 +0000
Received: by mail-ua1-f48.google.com with SMTP id
 a1e0cc1a2514c-77858d8dcb5so5571982241.1
 for <jfs-discussion@lists.sourceforge.net>;
 Fri, 21 Apr 2023 00:23:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1682061809; x=1684653809;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=iCQQOrDHvv7muofgTvhggno9gmpvYe5WVwBD+zXre78=;
 b=dGjSmUI/48jgVLdk2SJU9DZ4zOveEUnOYlKfTS0NXfCPrYm3y6jLIPidJ6i9RbbHx1
 yUJk+J4bPuefTTLcj0hiaEQbrzAJZUOzAJ9yXkwui6dEI2KD2i6A4y9YG5Ujs+iM2uXL
 /ZguhzsD5ZVdd4exocR5yfkxR6qfi4pcWXZPc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1682061809; x=1684653809;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=iCQQOrDHvv7muofgTvhggno9gmpvYe5WVwBD+zXre78=;
 b=EbDD9YCvkvaSfPLVa6SGvDs50aS2IXbGMGBenFHJdK7SPZrLeGZmVSIfvJm1PccKZ/
 t6QKT+cDfPBfPmHsdqhqPPN0n7hNKsSb+ZxppsmVAfJaY+RJJ4JhzjqDloW/BjXGu2zy
 7HR37hh7KztzxbmKhgY/DsiJBHLZ0oG6w9EKz+kyeMZovSX0nZwQpNv2JqTtYM22RPMu
 wB6ReMfzfnAvOsuPolQPVW/fJFp/LoQ/nb/7Qry29ZGO7GPFy7LrmFOesRVOQJMvPsm7
 NMSKFAogGCwbKnByMa/w8J/g21dDzaMf3cIiVk3g/lHc7xNo24IRMik8D2bCJcHR+UjQ
 PZEQ==
X-Gm-Message-State: AAQBX9cYt8OaMRyQt3s0nlY0/bepor8kVoVfe6ReNvbBMq1p/dpyNbA7
 evOcDqrG+EyLCslgal+NIAzGy6yd0gGcc3Svfms=
X-Google-Smtp-Source: AKy350ZEEP/PrU7kYgyyZkKivdaMPHUVf5WGz+Wiu1WQ8mlkUVfjfkCNB7ZnxyH4DOCp4JsT1PbWNg==
X-Received: by 2002:aa7:8554:0:b0:63d:40bb:a88b with SMTP id
 y20-20020aa78554000000b0063d40bba88bmr8194787pfn.14.1682060275718; 
 Thu, 20 Apr 2023 23:57:55 -0700 (PDT)
Received: from google.com (KD124209188001.ppp-bb.dion.ne.jp. [124.209.188.1])
 by smtp.gmail.com with ESMTPSA id
 136-20020a63008e000000b0051806da5cd6sm2038374pga.60.2023.04.20.23.57.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 20 Apr 2023 23:57:54 -0700 (PDT)
Date: Fri, 21 Apr 2023 15:57:47 +0900
From: Sergey Senozhatsky <senozhatsky@chromium.org>
To: Johannes Thumshirn <jth@kernel.org>
Message-ID: <20230421065747.GB1496740@google.com>
References: <20230420100501.32981-1-jth@kernel.org>
 <20230420100501.32981-14-jth@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230420100501.32981-14-jth@kernel.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  + Minchan On (23/04/20 12:04), Johannes Thumshirn wrote: >
 > From: Johannes Thumshirn <johannes.thumshirn@wdc.com> > > The zram writeback
 code uses bio_add_page() to add a page to a newly > created bio. bio_add
 [...] Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.48 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.48 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1ppl7H-00EVoe-36
X-Mailman-Approved-At: Fri, 21 Apr 2023 13:19:56 +0000
Subject: Re: [Jfs-discussion] [PATCH v4 13/22] zram: use __bio_add_page for
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
Cc: shaggy@kernel.org, jfs-discussion@lists.sourceforge.net, linux-mm@kvack.org,
 dm-devel@redhat.com, hch@lst.de, agruenba@redhat.com,
 Damien Le Moal <damien.lemoal@opensource.wdc.com>, willy@infradead.org,
 cluster-devel@redhat.com, kch@nvidia.com, snitzer@kernel.org,
 ming.lei@redhat.com, linux-block@vger.kernel.org, rpeterso@redhat.com,
 hare@suse.de, dsterba@suse.com, axboe@kernel.dk, linux-raid@vger.kernel.org,
 damien.lemoal@wdc.com, song@kernel.org, johannes.thumshirn@wdc.com,
 Minchan Kim <minchan@kernel.org>, linux-fsdevel@vger.kernel.org,
 linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

+ Minchan

On (23/04/20 12:04), Johannes Thumshirn wrote:
> 
> From: Johannes Thumshirn <johannes.thumshirn@wdc.com>
> 
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
> Reviewed-by: Damien Le Moal <damien.lemoal@opensource.wdc.com>

Reviewed-by: Sergey Senozhatsky <senozhatsky@chromium.org>


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
