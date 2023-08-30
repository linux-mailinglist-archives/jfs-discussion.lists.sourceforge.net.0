Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E5A0278D7BD
	for <lists+jfs-discussion@lfdr.de>; Wed, 30 Aug 2023 18:59:32 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qbOX9-0001xV-3L;
	Wed, 30 Aug 2023 16:59:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ghandatmanas@gmail.com>) id 1qbOX7-0001xO-Ob
 for jfs-discussion@lists.sourceforge.net;
 Wed, 30 Aug 2023 16:59:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wgkRy2fHXk12I8uXbR8oF1JVRCE6YBpekWqJS8+t/SY=; b=Zhdf7HKYHPBE2lU2IdXTlb14ak
 27hFcA0MqBP4I+oameX7KUoOkJ8quPtDcKyXP4Dxj0yTvaoBzyCC6d4Q3H3TxRqz4ZM4/Kdwn646y
 dDq1zQ6LoWlp9y9Tw+e1PAwvBIgwYCm1zA6zAADcg5qgbZZNFvxsD81VsU/eqJ8jnF/I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=wgkRy2fHXk12I8uXbR8oF1JVRCE6YBpekWqJS8+t/SY=; b=SWJCAxxg1uo+f2CwsKZU1KOk/0
 RKFLy2bscwEw+tzJOLkJ4jhEsdbI+cwAK36QvpZKdwFPTo1VvcI+QQSyTCoCjhy3tEITuOndahtHz
 JT5akje6D+mDES91r5VM4HspfQOpkE1W3BQwpU+33F7/gYPxp0mnchiBiKZvxgt4dM0A=;
Received: from mail-pj1-f41.google.com ([209.85.216.41])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qbOX8-0006ko-4w for jfs-discussion@lists.sourceforge.net;
 Wed, 30 Aug 2023 16:59:10 +0000
Received: by mail-pj1-f41.google.com with SMTP id
 98e67ed59e1d1-26f7f71b9a7so3697102a91.0
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 30 Aug 2023 09:59:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1693414744; x=1694019544; darn=lists.sourceforge.net;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=wgkRy2fHXk12I8uXbR8oF1JVRCE6YBpekWqJS8+t/SY=;
 b=ZpZYm9NjSv0WjJ4GetpFR/OkrCqaxez8FlmI5tvAjRWy3VklkO5L17HZF8haUU7gqH
 lusz01ojCfUZRE0RpLFxo6tMbzC5GiQvEUZXwmsnshdGHdmKBtTZNUc49mxJ4OD0S8pY
 YkKPRbFY1BG/FXGDWrKqr9PLW9D9lO0GlN6q+zWiVp6ljl2+d3l9jUeKcaP+ftHg5KYU
 KuBSm5WWer0dq5EIDOYxfOz62KjTMmQBB4vbYkG2FH6PWzjo2aCgZ115fnGKr3p8wZ+V
 VTznWD4rKhHJFXFzR6cKdd0YPB/1b2cBt/uuU44k4JpIwMwx2J0njJEZ9E+cy70HrxJw
 JKZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1693414744; x=1694019544;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=wgkRy2fHXk12I8uXbR8oF1JVRCE6YBpekWqJS8+t/SY=;
 b=i0O7ZR4EEkUjTvzs7UAaZbdNiOMWttTk5MlmRH/jk/IgxuC4DBs/2pkxkyfDqQjzL8
 lzwcJR+AA3vFFsOStdPArjZsGfnXMMD5ZjkXFW1yeeqSRqjAQMUEvRPWiB6RBsrQ6A3x
 ebL43OEgVXfENjyBAro1JMaQYWM/47oMTT+gxVP2Fb9R2NILChkK/FDeRfvw/sRdi3sS
 9RRJKbuT/7k+Nbt+h+TqyI8+CoqC1WdbiYaIShKDUywPSf4P/dkU2XNFw+ufri1IsW5h
 uAybKO4mX89e6GOX/THLmlAuax4/4Rg9miB4bws0QPW/OECHxKyf031TQmjm1tdr0rIi
 Y/iw==
X-Gm-Message-State: AOJu0YwBUQ1gmqdCFAzTliuRst+xXEP3fnZJPF1DMJCEVd8qI6fHKgDX
 AWZuBKMeI5pIJH3v3ZrLSm38kq8LV7yok6QB
X-Google-Smtp-Source: AGHT+IEiBWKa3xloyf6eL2PYGoBgEH0g8SDOhM3inWHe4UsSlpRC7tRISmG4yyxSsF9If5WjYXUl6w==
X-Received: by 2002:a17:90a:7345:b0:26b:4a9e:3c7e with SMTP id
 j5-20020a17090a734500b0026b4a9e3c7emr2738462pjs.4.1693414744444; 
 Wed, 30 Aug 2023 09:59:04 -0700 (PDT)
Received: from [10.0.2.15] ([103.37.201.174]) by smtp.gmail.com with ESMTPSA id
 d13-20020a17090ad98d00b0025bfda134ccsm1496364pjv.16.2023.08.30.09.59.01
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 30 Aug 2023 09:59:03 -0700 (PDT)
Message-ID: <e655b722-f610-99dd-16c1-ed3235860a80@gmail.com>
Date: Wed, 30 Aug 2023 22:28:58 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
To: Dave Kleikamp <dave.kleikamp@oracle.com>, liushixin2@huawei.com
References: <20230827050513.364567-1-ghandatmanas@gmail.com>
 <edf10660-2e8a-4f5b-8eb5-16038f8adbcf@oracle.com>
Content-Language: en-US
In-Reply-To: <edf10660-2e8a-4f5b-8eb5-16038f8adbcf@oracle.com>
X-Spam-Score: -1.4 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  I checked for the v6.5. Its fixed there. On 29/08/23 23:19, 
 Dave Kleikamp wrote: > On 8/27/23 12:05AM, Manas Ghandat wrote: >> Currently
 there is no bound check for number of logical blocks per >> page
 (bmp->db_l2nbperpage). Added the requir [...] 
 Content analysis details:   (-1.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.216.41 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ghandatmanas[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.41 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -1.2 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1qbOX8-0006ko-4w
Subject: Re: [Jfs-discussion] [PATCH] jfs : fix shift-out-of-bounds in
 dbUpdatePMap
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
 Linux-kernel-mentees@lists.linuxfoundation.org, linux-kernel@vger.kernel.org,
 syzbot+91ad2b52815a08caf4ea@syzkaller.appspotmail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

I checked for the v6.5. Its fixed there.

On 29/08/23 23:19, Dave Kleikamp wrote:
> On 8/27/23 12:05AM, Manas Ghandat wrote:
>> Currently there is no bound check for number of logical blocks per
>> page (bmp->db_l2nbperpage). Added the required bound check for the
>> calculation of dmap.
>
> This should already be fixed by 11509910c599 ("jfs: jfs_dmap: Validate 
> db_l2nbperpage while mounting")
>
> Can you please verify if this problem still exists in v6.5?
>
> Shaggy
>


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
