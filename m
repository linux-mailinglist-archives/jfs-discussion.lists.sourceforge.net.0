Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 630D074148D
	for <lists+jfs-discussion@lfdr.de>; Wed, 28 Jun 2023 17:07:18 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qEWl6-0002pt-7U;
	Wed, 28 Jun 2023 15:07:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <linkinjeon@kernel.org>) id 1qEWl3-0002pj-HL
 for jfs-discussion@lists.sourceforge.net;
 Wed, 28 Jun 2023 15:07:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 References:In-Reply-To:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tYONJNnGCQMJ80wSHKkNy+/9k7bcbNipagC4FIaSVh4=; b=aubRG7su4QV5j8/bbAEWqoN26l
 IyLaswQ694gsApnRU/CTYS7o1Hr8JXn+VnabvMT6ck0G+mCdN8nbsAaJzC0XNyPGzLcKdkCjiALXl
 fzh9zRtxFfx8dYv0FbqZUaOyDu1zy3MiavKzl58gAeAS+iigRU5j4aJAvYDzgfHPVk8U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:References:In-Reply-To:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=tYONJNnGCQMJ80wSHKkNy+/9k7bcbNipagC4FIaSVh4=; b=AICraSApXlqjWH2k/6JEW6Xq3r
 J44NTk5Qm+jqFez7Za+zBLcdInQvhNINCgfWUnFAa8f7ZfIylfrMTu1UQJj6paThjAqHemo41lDf5
 udH6bDWbJXitUBt9DrkU1xyr28CN6WzdGMcVf0Ymswfp61z5e3Lz9T3ArMlzHPhan9yc=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qEWl2-0007UD-P1 for jfs-discussion@lists.sourceforge.net;
 Wed, 28 Jun 2023 15:07:01 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 60FE4612A5
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 28 Jun 2023 15:06:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CA6F1C433CB
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 28 Jun 2023 15:06:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1687964814;
 bh=tYONJNnGCQMJ80wSHKkNy+/9k7bcbNipagC4FIaSVh4=;
 h=In-Reply-To:References:From:Date:Subject:To:Cc:From;
 b=fH3IUtR0gjCfGcOCNMckBP2f/Vs37X+rPVTO1uoh0Ocxu9vLx7mIfIgmE5UNXcRoM
 ogAbNleaeEMIL8vXfLUV9xsABdJYxzznt/+oUqFmmJgFQwmfr4ykUEi5VdEqL4emt1
 VBrN0WQBW8RAQNhUWwGsrd7t1QlsAWmwUIRBJveXODht9U2Z5gU0KpuSJvCl+MFffJ
 ZJ1Pg/F3xXwfFeeY29HbU7PmpVANRdsdDrdVOqc+In+rrGj/DN+DLIwgZIC5FnbX8k
 x0aRa3Iax38OyIKeajKR4UkyJWdPxg6NH7l2luXYY/3JH5xRtngl8too4lulS6neTZ
 LmMjwNWo1RHZg==
Received: by mail-oo1-f54.google.com with SMTP id
 006d021491bc7-5657d8ecdd3so1385709eaf.1
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 28 Jun 2023 08:06:54 -0700 (PDT)
X-Gm-Message-State: AC+VfDzNm7l0h3S7OCmfhb1yxEBrdLPlLvkwRBPSRoSgtBxv0oSaC8vj
 rioHyI4H23gnVk81TLz/llq7jYLkxPyLEdhF6/Y=
X-Google-Smtp-Source: ACHHUZ6B52reag+L2IlplUvg6F+aLqCsIPNfwwTs1JaQRfUZzOM5Xa4xbUxzeJQ+BYca+dwvBsArZR5zC0ac59AlOQA=
X-Received: by 2002:a05:6820:396:b0:563:5542:c45 with SMTP id
 r22-20020a056820039600b0056355420c45mr5562605ooj.7.1687964813976; Wed, 28 Jun
 2023 08:06:53 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac9:7a97:0:b0:4e8:f6ff:2aab with HTTP; Wed, 28 Jun 2023
 08:06:53 -0700 (PDT)
In-Reply-To: <20230628011439.159678-3-linux@treblig.org>
References: <20230628011439.159678-1-linux@treblig.org>
 <20230628011439.159678-3-linux@treblig.org>
From: Namjae Jeon <linkinjeon@kernel.org>
Date: Thu, 29 Jun 2023 00:06:53 +0900
X-Gmail-Original-Message-ID: <CAKYAXd-KeNM56ecmnaDR2wA4meTqPRa=e+KT3JJkpvC9=PCeiw@mail.gmail.com>
Message-ID: <CAKYAXd-KeNM56ecmnaDR2wA4meTqPRa=e+KT3JJkpvC9=PCeiw@mail.gmail.com>
To: linux@treblig.org
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  2023-06-28 10:14 GMT+09:00,
 linux@treblig.org <linux@treblig.org>:
 > From: "Dr. David Alan Gilbert" <linux@treblig.org> > > Swing most of the
 inline functions and unicode tables into smb/common > from [...] 
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1qEWl2-0007UD-P1
Subject: Re: [Jfs-discussion] [PATCH 2/3] fs/smb: Swing unicode common code
 from server->common
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
Cc: sfrench@samba.org, linux-cifs@vger.kernel.org,
 jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

2023-06-28 10:14 GMT+09:00, linux@treblig.org <linux@treblig.org>:
> From: "Dr. David Alan Gilbert" <linux@treblig.org>
>
> Swing most of the inline functions and unicode tables into smb/common
> from the copy in smb/server.
>
> UniStrcat has different types between the client and server
> versions so I've not moved it (although I suspect it's OK).
ksmbd doesn't use this function. You can move it to smb_unicode_common.h.

Thanks.


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
