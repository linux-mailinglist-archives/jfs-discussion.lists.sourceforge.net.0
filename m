Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C711664329
	for <lists+jfs-discussion@lfdr.de>; Tue, 10 Jan 2023 15:22:20 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1pFFVn-0003I9-Kv;
	Tue, 10 Jan 2023 14:21:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jiangqi903@gmail.com>) id 1pF4vT-0000P2-BY
 for jfs-discussion@lists.sourceforge.net;
 Tue, 10 Jan 2023 03:03:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Ie+rQH3mw2D5QoODuQ+CCdhtheNQpe0s3cmjyE1gSeQ=; b=INFhzoeurAgGYHAFoZkapNDzzM
 bVwY2YHmPoA8oWfrURB+eU/9eIwIlA0UdQM+vJLJEpPcudch2YOHCPyrq/OTIIOUTMGkxYbYwrdpJ
 lNF6WClzQ4/0zLGC5Ep75582PycabhWzVB9r0m5SdabwExnzGrciObHpMGeacm2T52JI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Ie+rQH3mw2D5QoODuQ+CCdhtheNQpe0s3cmjyE1gSeQ=; b=R4TUCpbH1fXX0yUQsLCldtnsXO
 L6Uh8zvKFzUgiQ9UREvtaJPs/nBY9vv+nrRQJuWuuCqvFydqdaDEFp1DBG9fWaXig0WNTaUzMUQi4
 7PCIvzEgJ9PsiVwAr1aEaI90gHPT0EcJaqp0EgU3aqEUIrz2MAOZryCSbxyn2LCDHNas=;
Received: from mail-pf1-f170.google.com ([209.85.210.170])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pF4vO-00CNky-GX for jfs-discussion@lists.sourceforge.net;
 Tue, 10 Jan 2023 03:03:47 +0000
Received: by mail-pf1-f170.google.com with SMTP id h7so3537716pfq.4
 for <jfs-discussion@lists.sourceforge.net>;
 Mon, 09 Jan 2023 19:03:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=Ie+rQH3mw2D5QoODuQ+CCdhtheNQpe0s3cmjyE1gSeQ=;
 b=hMJOr7gxNfRVXvptQWjnS8gggJmoU39dG01sMuSVgD+06ybLXZxq90y4dy3c96NbGF
 4ZT28Zq5UNherNLr00lPvH90N3EtrGwKCZ5w+s+Nk7G+2SJ6ZKT+sq5tu3EE3ULu3Kzw
 Tm1vipafgC4nL3i2C3ESwkGPiXyNWjk+DYNU5oYqzgFvUp2yw2WsLbuNqo2V0DWUVU/R
 4Q3HdEc6KdveDXPof/4iD/sv+HhtzWh5llcfA936NmkiAVO0yiQADoU9L8RAKYAkCMXx
 OowkMMJOMwmhX7BhL3tGmOP0dsjKWzhGNwVwtSMWuQP00OtD1lRZF8xUGLuC3jp0h/rG
 Im3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=Ie+rQH3mw2D5QoODuQ+CCdhtheNQpe0s3cmjyE1gSeQ=;
 b=hxSANJfZiZeHv4pRdPbsDoTHGmSgToaaYUbRrBleKwMk6BUUSYugK11U5lMaK77Ncs
 DxmXzGBXTfGUDvc6kr7k3CeqbzKeO4LrReFG1gJMxPvZrmMmER90YohOV05D8HicbubS
 /oMjhsbElCAilqIsgJyU/7vwgPk1o5CvTytpXHr7xi20D+pGa0SqSbGEFTclXE6Rxfmk
 KrJd+IxLvB7i3+8euo4wImh4STLgB46tjs2bdlwDuEc0ZUhKlxaoedTrIH/mfqHg1yhi
 pJo0Ey2qJRKEB80sH4ZUiy811VMXQFRx/r9xFau9cX48Z0i81Adbmh3AHfdGB5D68/ZF
 evgg==
X-Gm-Message-State: AFqh2kqSvO4xB5nZOmOHoYUL5g21MaKtW1QKtYnKPJZCeURdL2Zu9ZIr
 QEEaEZ/6kycxMEDtmNmSgJo=
X-Google-Smtp-Source: AMrXdXvJDNVJzGLOc0X2GvVwdFjI8RfAavc5gUlJ2WeGpNuCy2JjwDpIY0RBpj1yDjgL50FOUueSBQ==
X-Received: by 2002:a05:6a00:2281:b0:581:a8dc:8f95 with SMTP id
 f1-20020a056a00228100b00581a8dc8f95mr53203339pfe.12.1673319816855; 
 Mon, 09 Jan 2023 19:03:36 -0800 (PST)
Received: from [30.221.133.30] ([47.246.101.62])
 by smtp.gmail.com with ESMTPSA id
 y12-20020a62640c000000b005819313269csm6749208pfb.124.2023.01.09.19.03.33
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 09 Jan 2023 19:03:36 -0800 (PST)
Message-ID: <8c4cbb93-cba5-82b4-74c5-0ff1dcc214a1@gmail.com>
Date: Tue, 10 Jan 2023 11:03:31 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:102.0)
 Gecko/20100101 Thunderbird/102.6.1
Content-Language: en-US
To: Christoph Hellwig <hch@lst.de>, Andrew Morton
 <akpm@linux-foundation.org>, Chris Mason <clm@fb.com>,
 Josef Bacik <josef@toxicpanda.com>, David Sterba <dsterba@suse.com>,
 Dave Kleikamp <shaggy@kernel.org>, Mark Fasheh <mark@fasheh.com>,
 Joel Becker <jlbec@evilplan.org>, Joseph Qi <joseph.qi@linux.alibaba.com>,
 Evgeniy Dushistov <dushistov@mail.ru>,
 "Matthew Wilcox (Oracle)" <willy@infradead.org>
References: <20230108165645.381077-1-hch@lst.de>
 <20230108165645.381077-7-hch@lst.de>
From: Joseph Qi <jiangqi903@gmail.com>
In-Reply-To: <20230108165645.381077-7-hch@lst.de>
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 1/9/23 12:56 AM, Christoph Hellwig via Ocfs2-devel wrote:
 > Use filemap_write_and_wait_range to write back the range of the dirty >
 page instead of write_one_page in preparation of removing write_o [...] 
 Content analysis details:   (0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jiangqi903[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jiangqi903[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.170 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.170 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1pF4vO-00CNky-GX
X-Mailman-Approved-At: Tue, 10 Jan 2023 14:21:58 +0000
Subject: Re: [Jfs-discussion] [Ocfs2-devel] [PATCH 6/7] ocfs2: don't use
 write_one_page in ocfs2_duplicate_clusters_by_page
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
Cc: linux-fsdevel@vger.kernel.org, linux-mm@kvack.org,
 jfs-discussion@lists.sourceforge.net, linux-btrfs@vger.kernel.org,
 ocfs2-devel@oss.oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net



On 1/9/23 12:56 AM, Christoph Hellwig via Ocfs2-devel wrote:
> Use filemap_write_and_wait_range to write back the range of the dirty
> page instead of write_one_page in preparation of removing write_one_page
> and eventually ->writepage.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>

Looks good.
Reviewed-by: Joseph Qi <joseph.qi@linux.alibaba.com>

> ---
>  fs/ocfs2/refcounttree.c | 9 +++++----
>  1 file changed, 5 insertions(+), 4 deletions(-)
> 
> diff --git a/fs/ocfs2/refcounttree.c b/fs/ocfs2/refcounttree.c
> index 623db358b1efa8..4a73405962ec4f 100644
> --- a/fs/ocfs2/refcounttree.c
> +++ b/fs/ocfs2/refcounttree.c
> @@ -2952,10 +2952,11 @@ int ocfs2_duplicate_clusters_by_page(handle_t *handle,
>  		 */
>  		if (PAGE_SIZE <= OCFS2_SB(sb)->s_clustersize) {
>  			if (PageDirty(page)) {
> -				/*
> -				 * write_on_page will unlock the page on return
> -				 */
> -				ret = write_one_page(page);
> +				unlock_page(page);
> +				put_page(page);
> +
> +				ret = filemap_write_and_wait_range(mapping,
> +						offset, map_end - 1);
>  				goto retry;
>  			}
>  		}


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
