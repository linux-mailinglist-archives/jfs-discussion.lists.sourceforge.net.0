Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BC80F7B4B06
	for <lists+jfs-discussion@lfdr.de>; Mon,  2 Oct 2023 06:35:51 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qnAeZ-0006T4-46;
	Mon, 02 Oct 2023 04:35:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ghandatmanas@gmail.com>) id 1qnAeY-0006Sy-KV
 for jfs-discussion@lists.sourceforge.net;
 Mon, 02 Oct 2023 04:35:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9xW3a1nINnEbWotZ8VGaoeFipO2l6o5xih0v3ERc7HM=; b=a9j9NcC6FfAoPUAPrSZS3WXEZm
 GyknrVfHPYRshcsXdSdGmH+QggXHchUmD0jSvPfztPGNjC+9sGrH7l2Bq11X3VpYAZOwAyyUm6vs6
 o2jQhzTXfCfVpOks+y5QmCvcdDK7l5RWtAe/mlocwDm0hz+wAcm5nEzl6SVyBnjUwbJw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=9xW3a1nINnEbWotZ8VGaoeFipO2l6o5xih0v3ERc7HM=; b=TtRggqeLmhK0S6xPNZKLzXMLW3
 pHf6lhmfNM08eEkZppnWH7A/IE+5VSajZWMgF2crmlAJRvdSIVFxUFyq8CA4TxQdqFe+qe+WtDqx2
 lMHc5MlgFCytLA88S9ulAKD1r6gxYYAhtiHGu6TPpC3t7ZH/WtIR3SHDsQjseG6NQqnM=;
Received: from mail-oa1-f50.google.com ([209.85.160.50])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qnAeS-00FAfd-Ap for jfs-discussion@lists.sourceforge.net;
 Mon, 02 Oct 2023 04:35:29 +0000
Received: by mail-oa1-f50.google.com with SMTP id
 586e51a60fabf-1e12f41e496so1856158fac.3
 for <jfs-discussion@lists.sourceforge.net>;
 Sun, 01 Oct 2023 21:35:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1696221318; x=1696826118; darn=lists.sourceforge.net;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=9xW3a1nINnEbWotZ8VGaoeFipO2l6o5xih0v3ERc7HM=;
 b=bxXEjK0WdQN6NRdlk3oiOQvs1RR9z/kcim5kl0KwYqO+cG/f1k5ke0be8tKQmrqZC1
 QRHK4E7XO+Tu0IlfQdD8QvxRiF5A6Q6EEaPjvGgTSng1NPvDdVVzXCvv3UsF79wBtZMy
 NN4Vb+MckXgSc14YfiZO/QtGiu5FJkZHl2MHBtrirdcvuuCwhrqGjnZYCCEJBzRNwsZE
 W0XzxQ6y6XEFWH0koKodJsfwu9k+0YuwvEUx6fM4se8dExc/+t9miwvCuezLO1ArsoNQ
 UO4wVPbhuEtSdG96vi/PY+ZHMxRAf/wM86EDRNshd4StmVQS/CHbSMG0SCxhTZP0Lwsy
 c72A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1696221318; x=1696826118;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=9xW3a1nINnEbWotZ8VGaoeFipO2l6o5xih0v3ERc7HM=;
 b=LumS9D8RMChl10Y882D5rNzksd/oSaVylAE0W4Jrgr5E8eGP13/a1tTfIq/1+05QWQ
 CBYh2diECtU2QF1MmALn8u+pc37B0dHZp7R9xs2MFrcQLSyhaGtUW7OB1C+kgnoYmkto
 KI9ABj9QTjA44MUbXlePGk6co5DhX4+WvkXiQHaUwLt8gKOznCFvcrVpCMmt5VM7vKcK
 FA6/LjspTSExUDw3+8ojsLo90C1KwCh77LCEhwziDrqNwhhGYDe2ecnVk8vORo38bGDn
 2a2DtERazk95WE6dkx6mD9cWmUx7qV+f2k2B1Voc4ewXldp1gAz+YkmaoOZLpXqo8F8D
 8MzA==
X-Gm-Message-State: AOJu0Yxzy9/I9ZG2ZOq4A4KNQxHbEi5dUnDCBbwMhVyqDtfMyE65LxWW
 G+M0ob0NtMFDnZhBsu0+ARc=
X-Google-Smtp-Source: AGHT+IEkNi/NNt+Pv2tFLsCHn+2hQDf1i9nxZM4iCql6G03AqLmJwsazn8elKpMjniaKfvVyPHFnUQ==
X-Received: by 2002:a05:6871:811:b0:1dc:723d:b8d0 with SMTP id
 q17-20020a056871081100b001dc723db8d0mr13014714oap.27.1696221318480; 
 Sun, 01 Oct 2023 21:35:18 -0700 (PDT)
Received: from [10.0.2.15] ([103.37.201.176]) by smtp.gmail.com with ESMTPSA id
 k67-20020a633d46000000b00577bc070c6bsm17446832pga.68.2023.10.01.21.35.16
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 01 Oct 2023 21:35:18 -0700 (PDT)
Message-ID: <cc9825ac-1f5f-a15b-70f1-bdf238e78d32@gmail.com>
Date: Mon, 2 Oct 2023 10:05:14 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
To: shaggy@kernel.org
References: <20230926071312.14086-1-ghandatmanas@gmail.com>
Content-Language: en-US
In-Reply-To: <20230926071312.14086-1-ghandatmanas@gmail.com>
X-Spam-Score: 1.5 (+)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  just a friendly ping On 26/09/23 12:43, Manas Ghandat wrote:
 > Currently there is not check against the agno of the iag while > allocating
 new inodes to avoid fragmentation problem. Added the check > which is
 required. > [...] 
 Content analysis details:   (1.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [103.37.201.176 listed in zen.spamhaus.org]
 1.2 RCVD_IN_BL_SPAMCOP_NET RBL: Received via a relay in
 bl.spamcop.net
 [Blocked - see <https://www.spamcop.net/bl.shtml?103.37.201.176>]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ghandatmanas[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.50 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.50 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -3.1 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1qnAeS-00FAfd-Ap
Subject: Re: [Jfs-discussion] [PATCH] jfs: fix array-index-out-of-bounds in
 diAlloc
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
From: Manas Ghandat via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Manas Ghandat <ghandatmanas@gmail.com>
Cc: jfs-discussion@lists.sourceforge.net,
 Linux-kernel-mentees@lists.linuxfoundation.org, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

just a friendly ping

On 26/09/23 12:43, Manas Ghandat wrote:
> Currently there is not check against the agno of the iag while
> allocating new inodes to avoid fragmentation problem. Added the check
> which is required.
>
> Signed-off-by: Manas Ghandat <ghandatmanas@gmail.com>
> ---
>   fs/jfs/jfs_imap.c | 2 ++
>   1 file changed, 2 insertions(+)
>
> diff --git a/fs/jfs/jfs_imap.c b/fs/jfs/jfs_imap.c
> index 799d3837e7c2..ace8a1506380 100644
> --- a/fs/jfs/jfs_imap.c
> +++ b/fs/jfs/jfs_imap.c
> @@ -1355,6 +1355,8 @@ int diAlloc(struct inode *pip, bool dir, struct inode *ip)
>   
>   	/* get the ag number of this iag */
>   	agno = BLKTOAG(JFS_IP(pip)->agstart, JFS_SBI(pip->i_sb));
> +	if (agno < 0)
> +		return -EIO;
>   
>   	if (atomic_read(&JFS_SBI(pip->i_sb)->bmap->db_active[agno])) {
>   		/*


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
